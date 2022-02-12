import 'package:another_flushbar/flushbar_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Form(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/sign-in');
                  },
                  child: const Text('Sign In Here'),
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
                      final userCredential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      await FirebaseAuth.instance.signOut();
                      if (!mounted) return;

                      final user = userCredential.user;

                      if (user != null) {
                        String message;
                        if (user.emailVerified) {
                          message = "account created, now you can sign in";
                        } else {
                          message =
                              "account created, check your email to verify";
                        }
                        SchedulerBinding.instance
                            ?.addPostFrameCallback((timeStamp) {
                          FlushbarHelper.createSuccess(
                            message: message,
                          ).show(context);
                        });
                      } else {
                        SchedulerBinding.instance
                            ?.addPostFrameCallback((timeStamp) {
                          FlushbarHelper.createError(
                            message: 'something went wrong',
                          ).show(context);
                        });
                      }

                      Navigator.of(context).pushReplacementNamed('/sign-in');
                    } on FirebaseAuthException catch (e) {
                      FlushbarHelper.createError(message: e.message.toString())
                          .show(context);
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
