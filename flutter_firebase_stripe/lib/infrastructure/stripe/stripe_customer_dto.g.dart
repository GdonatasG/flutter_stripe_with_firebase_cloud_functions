// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StripeCustomerDTO _$$_StripeCustomerDTOFromJson(Map<String, dynamic> json) =>
    _$_StripeCustomerDTO(
      balance: const StripeCustomerBalanceFromCentsConverter()
          .fromJson(json['balance'] as int?),
    );

Map<String, dynamic> _$$_StripeCustomerDTOToJson(
        _$_StripeCustomerDTO instance) =>
    <String, dynamic>{
      'balance': const StripeCustomerBalanceFromCentsConverter()
          .toJson(instance.balance),
    };
