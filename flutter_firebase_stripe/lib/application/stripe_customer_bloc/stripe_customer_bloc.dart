import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_stripe/infrastructure/stripe/stripe_customer_dto.dart';
import 'package:flutter_firebase_stripe/infrastructure/stripe/stripe_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stripe_customer_event.dart';

part 'stripe_customer_state.dart';

part 'stripe_customer_bloc.freezed.dart';

class StripeCustomerBloc
    extends Bloc<StripeCustomerEvent, StripeCustomerState> {
  final StripeService _stripeService;

  StripeCustomerBloc(this._stripeService)
      : super(const StripeCustomerState.initial()) {
    on<StripeCustomerEvent>((event, emit) async {
      await event.map(
        getCustomer: (e) async => _getCustomerEvent(
          e: e,
          emit: emit,
        ),
      );
    });
  }

  Future<void> _getCustomerEvent({
    required GetCustomer e,
    required Emitter<StripeCustomerState> emit,
  }) async {
    emit(
      e.isRefresh
          ? const StripeCustomerState.refreshing()
          : const StripeCustomerState.getting(),
    );

    try {
      final response = await _stripeService.getCustomer(
        token: 'Bearer ${const String.fromEnvironment('STRIPE_SECRET')}',
        customerId: e.customerId,
      );

      if (!response.isSuccessful || response.body == null) {
        throw Exception(response.error ?? '');
      } else {
        emit(StripeCustomerState.customerLoaded(response.body!));
      }
    } catch (exception) {
      log(exception.toString());
      emit(
        e.isRefresh
            ? const StripeCustomerState.refreshError()
            : const StripeCustomerState.getError(),
      );
    }
  }
}
