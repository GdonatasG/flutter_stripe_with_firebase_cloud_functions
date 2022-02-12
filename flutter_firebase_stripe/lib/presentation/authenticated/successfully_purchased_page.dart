import 'package:flutter/material.dart';

class SuccessfullyPurchasedPage extends StatelessWidget {
  const SuccessfullyPurchasedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('PURCHASED!'),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Go back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
