part of 'stripe_customer_bloc.dart';

@freezed
abstract class StripeCustomerEvent with _$StripeCustomerEvent {
  const factory StripeCustomerEvent.getCustomer({
    required bool isRefresh,
    required String customerId,
  }) = GetCustomer;
}
