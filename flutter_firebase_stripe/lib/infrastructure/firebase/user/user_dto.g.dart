// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      stripeId: json['stripe_id'] as String?,
      stripeSetupSecret: json['stripe_setup_secret'] as String?,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'stripe_id': instance.stripeId,
      'stripe_setup_secret': instance.stripeSetupSecret,
    };
