import 'package:another_flushbar/flushbar_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Form(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/sign-up');
                  },
                  child: const Text('Sign Up Here'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      final result = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );

                      if (!mounted) return;

                      final user = result.user;

                      if (user != null) {
                        if (user.emailVerified) {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          await FirebaseAuth.instance.signOut();

                          if (!mounted) return;

                          FlushbarHelper.createError(
                            message: 'verify your account',
                          ).show(context);
                        }
                      } else {
                        await FirebaseAuth.instance.signOut();

                        if (!mounted) return;

                        FlushbarHelper.createError(
                          message: 'something went wrong, try again',
                        ).show(context);
                      }
                    } on FirebaseAuthException catch (e) {
                      FlushbarHelper.createError(message: e.message.toString())
                          .show(context);
                    }
                  },
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
