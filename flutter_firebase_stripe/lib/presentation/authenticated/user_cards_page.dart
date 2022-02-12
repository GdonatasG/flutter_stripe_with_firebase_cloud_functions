import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';
import 'package:flutterfire_ui/firestore.dart';

class UserCardsPage extends StatelessWidget {
  final UserDTO user;
  final bool forPaymentSelection;

  const UserCardsPage({
    Key? key,
    required this.user,
    required this.forPaymentSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(forPaymentSelection ? 'Select Card' : 'My Cards'),
        actions: [
          IconButton(
            onPressed: () async {
              Navigator.of(context).pushNamed(
                '/add-card',
                arguments: user,
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: FirestoreListView<Map<String, dynamic>>(
        query: FirebaseFirestore.instance
            .collection('users')
            .doc(user.id ?? '')
            .collection('payment_methods')
            .orderBy('created', descending: true),
        itemBuilder: (ctx, doc) {
          final Map<String, dynamic> data = doc.data();
          final String cardNumber = "${data["card"]["last4"]}";
          final int expiryMonth = data["card"]["exp_month"] ?? 0;
          final String expiryYear = (data["card"]["exp_year"] ?? 0).toString();
          String expiryYearLast2;
          try {
            expiryYearLast2 = expiryYear.substring(expiryYear.length - 2);
          } catch (_) {
            expiryYearLast2 = "00";
          }
          final String expiryDate =
              "${expiryMonth < 10 ? "0$expiryMonth" : expiryMonth}/$expiryYearLast2";
          return GestureDetector(
            onTap: () {
              if (forPaymentSelection) {
                Navigator.pop(context, data);
              }
            },
            child: CreditCardWidget(
              isHolderNameVisible: true,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: "${data["billing_details"]["name"] ?? ''}",
              cvvCode: '',
              showBackView: false,
              onCreditCardWidgetChange: (_) {},
            ),
          );
        },
      ),
    );
  }
}
