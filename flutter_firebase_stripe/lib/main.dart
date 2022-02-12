import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';
import 'package:flutter_firebase_stripe/presentation/authenticated/add_card_page.dart';
import 'package:flutter_firebase_stripe/presentation/authenticated/purchase_page.dart';
import 'package:flutter_firebase_stripe/presentation/authenticated/successfully_purchased_page.dart';
import 'package:flutter_firebase_stripe/presentation/authenticated/user_cards_page.dart';
import 'package:flutter_firebase_stripe/presentation/authenticated/home_page.dart';
import 'package:flutter_firebase_stripe/presentation/core/auth_gate.dart';
import 'package:flutter_firebase_stripe/presentation/unauthenticated/sign_in_page.dart';
import 'package:flutter_firebase_stripe/presentation/unauthenticated/sign_up_page.dart';
import 'package:flutterfire_ui/i10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stripe Firebase',
      routes: {
        '/': (context) => const AuthGate(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
        '/purchase-completed': (context) => const SuccessfullyPurchasedPage()
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/purchase') {
          final args = settings.arguments! as Map<String, dynamic>;
          final UserDTO user = args['user'];
          final double amount = args['amount'];

          // Then, extract the required data from
          // the arguments and pass the data to the
          // correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return PurchasePage(
                user: user,
                amount: amount,
              );
            },
          );
        }
        if (settings.name == '/user-cards') {
          final args = settings.arguments! as Map<String, dynamic>;
          final UserDTO user = args['user'];
          final bool forPaymentSelection = args['forPaymentSelection'];

          // Then, extract the required data from
          // the arguments and pass the data to the
          // correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return UserCardsPage(
                user: user,
                forPaymentSelection: forPaymentSelection,
              );
            },
          );
        }
        if (settings.name == '/add-card') {
          final user = settings.arguments! as UserDTO;

          // Then, extract the required data from
          // the arguments and pass the data to the
          // correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return AddCardPage(
                user: user,
              );
            },
          );
        }
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      localizationsDelegates: [
        //FlutterFireUILocalizations.withDefaultOverrides(const LabelOverrides()),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FlutterFireUILocalizations.delegate,
      ],
    );
  }
}
