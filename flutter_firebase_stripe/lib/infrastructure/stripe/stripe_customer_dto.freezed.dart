// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stripe_customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StripeCustomerDTO _$StripeCustomerDTOFromJson(Map<String, dynamic> json) {
  return _StripeCustomerDTO.fromJson(json);
}

/// @nodoc
class _$StripeCustomerDTOTearOff {
  const _$StripeCustomerDTOTearOff();

  _StripeCustomerDTO call(
      {@StripeCustomerBalanceFromCentsConverter() double? balance}) {
    return _StripeCustomerDTO(
      balance: balance,
    );
  }

  StripeCustomerDTO fromJson(Map<String, Object?> json) {
    return StripeCustomerDTO.fromJson(json);
  }
}

/// @nodoc
const $StripeCustomerDTO = _$StripeCustomerDTOTearOff();

/// @nodoc
mixin _$StripeCustomerDTO {
  @StripeCustomerBalanceFromCentsConverter()
  double? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StripeCustomerDTOCopyWith<StripeCustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripeCustomerDTOCopyWith<$Res> {
  factory $StripeCustomerDTOCopyWith(
          StripeCustomerDTO value, $Res Function(StripeCustomerDTO) then) =
      _$StripeCustomerDTOCopyWithImpl<$Res>;
  $Res call({@StripeCustomerBalanceFromCentsConverter() double? balance});
}

/// @nodoc
class _$StripeCustomerDTOCopyWithImpl<$Res>
    implements $StripeCustomerDTOCopyWith<$Res> {
  _$StripeCustomerDTOCopyWithImpl(this._value, this._then);

  final StripeCustomerDTO _value;
  // ignore: unused_field
  final $Res Function(StripeCustomerDTO) _then;

  @override
  $Res call({
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$StripeCustomerDTOCopyWith<$Res>
    implements $StripeCustomerDTOCopyWith<$Res> {
  factory _$StripeCustomerDTOCopyWith(
          _StripeCustomerDTO value, $Res Function(_StripeCustomerDTO) then) =
      __$StripeCustomerDTOCopyWithImpl<$Res>;
  @override
  $Res call({@StripeCustomerBalanceFromCentsConverter() double? balance});
}

/// @nodoc
class __$StripeCustomerDTOCopyWithImpl<$Res>
    extends _$StripeCustomerDTOCopyWithImpl<$Res>
    implements _$StripeCustomerDTOCopyWith<$Res> {
  __$StripeCustomerDTOCopyWithImpl(
      _StripeCustomerDTO _value, $Res Function(_StripeCustomerDTO) _then)
      : super(_value, (v) => _then(v as _StripeCustomerDTO));

  @override
  _StripeCustomerDTO get _value => super._value as _StripeCustomerDTO;

  @override
  $Res call({
    Object? balance = freezed,
  }) {
    return _then(_StripeCustomerDTO(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StripeCustomerDTO extends _StripeCustomerDTO {
  _$_StripeCustomerDTO(
      {@StripeCustomerBalanceFromCentsConverter() this.balance})
      : super._();

  factory _$_StripeCustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StripeCustomerDTOFromJson(json);

  @override
  @StripeCustomerBalanceFromCentsConverter()
  final double? balance;

  @override
  String toString() {
    return 'StripeCustomerDTO(balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StripeCustomerDTO &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  _$StripeCustomerDTOCopyWith<_StripeCustomerDTO> get copyWith =>
      __$StripeCustomerDTOCopyWithImpl<_StripeCustomerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StripeCustomerDTOToJson(this);
  }
}

abstract class _StripeCustomerDTO extends StripeCustomerDTO {
  factory _StripeCustomerDTO(
          {@StripeCustomerBalanceFromCentsConverter() double? balance}) =
      _$_StripeCustomerDTO;
  _StripeCustomerDTO._() : super._();

  factory _StripeCustomerDTO.fromJson(Map<String, dynamic> json) =
      _$_StripeCustomerDTO.fromJson;

  @override
  @StripeCustomerBalanceFromCentsConverter()
  double? get balance;
  @override
  @JsonKey(ignore: true)
  _$StripeCustomerDTOCopyWith<_StripeCustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
