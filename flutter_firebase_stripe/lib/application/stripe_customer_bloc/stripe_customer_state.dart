part of 'stripe_customer_bloc.dart';

@freezed
abstract class StripeCustomerState with _$StripeCustomerState {
  const factory StripeCustomerState.initial() = _Initial;

  const factory StripeCustomerState.getting() = _GettingCustomer;

  const factory StripeCustomerState.getError() = _GetError;

  const factory StripeCustomerState.refreshing() = _RefreshingCustomer;

  const factory StripeCustomerState.refreshError() = _RefreshError;

  const factory StripeCustomerState.customerLoaded(StripeCustomerDTO customer) =
      _CustomerLoaded;
}
