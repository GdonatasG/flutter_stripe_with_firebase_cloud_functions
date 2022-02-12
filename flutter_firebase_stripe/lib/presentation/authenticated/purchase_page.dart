import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';

class PurchasePage extends StatefulWidget {
  final double amount;
  final UserDTO user;

  const PurchasePage({
    Key? key,
    required this.amount,
    required this.user,
  }) : super(key: key);

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  Map<String, dynamic>? cardData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 50.0,
        ),
        children: [
          Text('You will be charged : ${widget.amount}'),
          const SizedBox(
            height: 20.0,
          ),
          if (cardData != null) _selectedCard(),
          const SizedBox(
            height: 20.0,
          ),
          if (cardData != null)
            ElevatedButton(
              onPressed: () async {
                try {
                  await FirebaseFunctions.instance
                      .httpsCallable(
                    'chargeCustomer',
                  )
                      .call(
                    <String, dynamic>{
                      'sellerStripeId': 'cus_L8IZdEtwLxZFHb',
                      'sellerId': 'AhJOTAFtiMd1x4r5pm7Uo9XNOKC2',
                      'amount': (widget.amount * 100).toInt(),
                      'customer': widget.user.stripeId,
                      'uid': widget.user.id,
                      'paymentMethod': cardData!['id'],
                      'description': 'Paid for specific item',
                    },
                  );
                  if (!mounted) return;
                  Navigator.of(context)
                      .pushReplacementNamed('/purchase-completed');
                } catch (e) {
                  FlushbarHelper.createError(message: e.toString())
                      .show(context);
                }
              },
              child: const Text('PAY NOW'),
            ),
          ElevatedButton(
            onPressed: () async {
              final data = await Navigator.of(context).pushNamed(
                '/user-cards',
                arguments: {
                  'user': widget.user,
                  'forPaymentSelection': true,
                },
              );
              setState(() {
                if (data != null) {
                  cardData = data as Map<String, dynamic>;
                }
              });
            },
            child: const Text('Select card'),
          ),
        ],
      ),
    );
  }

  CreditCardWidget _selectedCard() {
    final String cardNumber = "${cardData!["card"]["last4"]}";
    final int expiryMonth = cardData!["card"]["exp_month"] ?? 0;
    final String expiryYear = (cardData!["card"]["exp_year"] ?? 0).toString();
    String expiryYearLast2;
    try {
      expiryYearLast2 = expiryYear.substring(expiryYear.length - 2);
    } catch (_) {
      expiryYearLast2 = "00";
    }
    final String expiryDate =
        "${expiryMonth < 10 ? "0$expiryMonth" : expiryMonth}/$expiryYearLast2";
    return CreditCardWidget(
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cardHolderName: "${cardData!["billing_details"]["name"] ?? ''}",
      cvvCode: '',
      showBackView: false,
      onCreditCardWidgetChange: (_) {},
    );
  }
}
