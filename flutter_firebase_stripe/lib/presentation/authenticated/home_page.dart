import 'package:another_flushbar/flushbar_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_stripe/application/stripe_customer_bloc/stripe_customer_bloc.dart';
import 'package:flutter_firebase_stripe/application/user_subscriber_bloc/user_subscriber_bloc.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_repository.dart';
import 'package:flutter_firebase_stripe/infrastructure/stripe/stripe_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserSubscriberBloc(UserRepository())
            ..add(const UserSubscriberEvent.subscribe()),
        ),
        BlocProvider(
          create: (_) => StripeCustomerBloc(StripeService.create()),
        )
      ],
      child: const HomePageView(),
    );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserSubscriberBloc, UserSubscriberState>(
      listenWhen: (p, c) => c.maybeMap(
        subscribingError: (_) => true,
        orElse: () => false,
      ),
      listener: (ctx, state) {
        state.maybeMap(
          subscribingError: (_) async {
            await FirebaseAuth.instance.signOut();
            if (!mounted) return;
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/sign-in',
              (route) => false,
            );
            SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
              FlushbarHelper.createError(message: 'user not found')
                  .show(context);
            });
          },
          orElse: () {},
        );
      },
      buildWhen: (p, c) => c.maybeMap(
        initial: (_) => true,
        subscribing: (_) => true,
        subscribed: (_) => true,
        orElse: () => false,
      ),
      builder: (ctx, state) {
        return state.maybeMap(
          subscribed: (s) => LoadedHomePage(user: s.user),
          orElse: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}

class LoadedHomePage extends StatefulWidget {
  final UserDTO user;

  const LoadedHomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<LoadedHomePage> createState() => _LoadedHomePageState();
}

class _LoadedHomePageState extends State<LoadedHomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<StripeCustomerBloc>(context).add(
      StripeCustomerEvent.getCustomer(
        isRefresh: false,
        customerId: widget.user.stripeId ?? '',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StripeCustomerBloc, StripeCustomerState>(
      listener: (ctx, state) {
        state.maybeMap(
          getError: (_) {
            FlushbarHelper.createError(message: 'Error getting balance')
                .show(context);
          },
          refreshError: (_) {
            FlushbarHelper.createError(message: 'Error refreshing balance')
                .show(context);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/user-cards',
                  arguments: {
                    'user': widget.user,
                    'forPaymentSelection': false,
                  },
                );
              },
              icon: const Icon(Icons.credit_card),
            ),
            IconButton(
              onPressed: () async {
                await BlocProvider.of<UserSubscriberBloc>(context).close();
                await FirebaseAuth.instance.signOut();
                if (!mounted) return;
                Navigator.pushReplacementNamed(context, '/sign-in');
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () {
            BlocProvider.of<StripeCustomerBloc>(context).add(
              StripeCustomerEvent.getCustomer(
                isRefresh: true,
                customerId: widget.user.stripeId ?? '',
              ),
            );

            return BlocProvider.of<StripeCustomerBloc>(context)
                .stream
                .firstWhere(
                  (element) => element.maybeMap(
                    customerLoaded: (_) => true,
                    refreshError: (_) => true,
                    orElse: () => false,
                  ),
                );
          },
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              Text("stripeId: ${widget.user.stripeId}"),
              BlocBuilder<StripeCustomerBloc, StripeCustomerState>(
                buildWhen: (p, c) => c.maybeMap(
                  customerLoaded: (_) => true,
                  orElse: () => false,
                ),
                builder: (ctx, state) => state.maybeMap(
                  customerLoaded: (s) =>
                      Text('Balance: ${s.customer.balance ?? ''}'),
                  orElse: () => const Text('Balance: '),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/purchase',
                    arguments: {
                      'user': widget.user,
                      'amount': 5.toDouble(),
                    },
                  );
                },
                child: const Text('Buy for 5€'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
