import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firebase_stripe/presentation/authenticated/home_page.dart';
import 'package:flutter_firebase_stripe/presentation/unauthenticated/sign_in_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    return auth.currentUser != null ? const HomePage() : const SignInPage();
  }
}
