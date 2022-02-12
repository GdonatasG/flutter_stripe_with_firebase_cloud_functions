import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';

class AddCardPage extends StatefulWidget {
  final UserDTO user;

  const AddCardPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(
          10.0,
        ),
        children: [
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            isHolderNameVisible: true,
            cardBgColor: Theme.of(context).colorScheme.primary,
            //backgroundImage: useBackgroundImage ? 'assets/card_bg.png' : null,
            onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
            /*customCardTypeIcons: <CustomCardTypeIcon>[
              CustomCardTypeIcon(
                cardType: CardType.mastercard,
                cardImage: Image.asset(
                  'assets/mastercard.png',
                  height: 48,
                  width: 48,
                ),
              ),
            ],*/
          ),
          const SizedBox(
            height: 20.0,
          ),
          CreditCardForm(
            formKey: formKey,
            obscureCvv: true,
            obscureNumber: true,
            cardNumber: cardNumber,
            cvvCode: cvvCode,
            cardHolderName: cardHolderName,
            expiryDate: expiryDate,
            themeColor: Colors.blue,
            cardNumberDecoration: const InputDecoration(
              labelText: 'Number',
              hintText: 'XXXX XXXX XXXX XXXX',
            ),
            expiryDateDecoration: const InputDecoration(
              labelText: 'Expired Date',
              hintText: 'XX/XX',
            ),
            cardHolderDecoration: const InputDecoration(
              labelText: 'Card Holder',
            ),
            onCreditCardModelChange: _onCreditCardModelChange,
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              primary: const Color(0xff1b447b),
            ),
            child: Container(
              margin: const EdgeInsets.all(12),
              child: const Text(
                'Validate',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'halter',
                  fontSize: 14,
                  package: 'flutter_credit_card',
                ),
              ),
            ),
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await FirebaseFunctions.instance
                      .httpsCallable(
                    'createPaymentMethod',
                  )
                      .call(
                    <String, dynamic>{
                      'card': {
                        'number': cardNumber,
                        'exp_month': expiryDate.split('/')[0],
                        'exp_year': expiryDate.split('/')[1],
                        'cvc': cvvCode,
                      },
                      'billing_details': {
                        'name': cardHolderName,
                      },
                      'customer': widget.user.stripeId,
                      'uid': widget.user.id
                    },
                  );
                  if (!mounted) return;
                  SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
                    FlushbarHelper.createSuccess(message: 'card added')
                        .show(context);
                  });
                  Navigator.pop(context);
                } catch (e) {
                  FlushbarHelper.createError(message: e.toString())
                      .show(context);
                }
              }
            },
          ),
        ],
      ),
    );
  }

  void _onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
