import 'package:flutter_firebase_stripe/infrastructure/converters/stripe_customer_balance_from_cents_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stripe_customer_dto.freezed.dart';

part 'stripe_customer_dto.g.dart';

@freezed
abstract class StripeCustomerDTO implements _$StripeCustomerDTO {
  const StripeCustomerDTO._();

  factory StripeCustomerDTO({
    @required @StripeCustomerBalanceFromCentsConverter() double? balance,
  }) = _StripeCustomerDTO;

  factory StripeCustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$StripeCustomerDTOFromJson(json);
}
