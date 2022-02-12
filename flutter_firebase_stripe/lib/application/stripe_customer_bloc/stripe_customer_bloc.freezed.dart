// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stripe_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StripeCustomerEventTearOff {
  const _$StripeCustomerEventTearOff();

  GetCustomer getCustomer(
      {required bool isRefresh, required String customerId}) {
    return GetCustomer(
      isRefresh: isRefresh,
      customerId: customerId,
    );
  }
}

/// @nodoc
const $StripeCustomerEvent = _$StripeCustomerEventTearOff();

/// @nodoc
mixin _$StripeCustomerEvent {
  bool get isRefresh => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, String customerId) getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRefresh, String customerId)? getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, String customerId)? getCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomer value) getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCustomer value)? getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomer value)? getCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StripeCustomerEventCopyWith<StripeCustomerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripeCustomerEventCopyWith<$Res> {
  factory $StripeCustomerEventCopyWith(
          StripeCustomerEvent value, $Res Function(StripeCustomerEvent) then) =
      _$StripeCustomerEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh, String customerId});
}

/// @nodoc
class _$StripeCustomerEventCopyWithImpl<$Res>
    implements $StripeCustomerEventCopyWith<$Res> {
  _$StripeCustomerEventCopyWithImpl(this._value, this._then);

  final StripeCustomerEvent _value;
  // ignore: unused_field
  final $Res Function(StripeCustomerEvent) _then;

  @override
  $Res call({
    Object? isRefresh = freezed,
    Object? customerId = freezed,
  }) {
    return _then(_value.copyWith(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetCustomerCopyWith<$Res>
    implements $StripeCustomerEventCopyWith<$Res> {
  factory $GetCustomerCopyWith(
          GetCustomer value, $Res Function(GetCustomer) then) =
      _$GetCustomerCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh, String customerId});
}

/// @nodoc
class _$GetCustomerCopyWithImpl<$Res>
    extends _$StripeCustomerEventCopyWithImpl<$Res>
    implements $GetCustomerCopyWith<$Res> {
  _$GetCustomerCopyWithImpl(
      GetCustomer _value, $Res Function(GetCustomer) _then)
      : super(_value, (v) => _then(v as GetCustomer));

  @override
  GetCustomer get _value => super._value as GetCustomer;

  @override
  $Res call({
    Object? isRefresh = freezed,
    Object? customerId = freezed,
  }) {
    return _then(GetCustomer(
      isRefresh: isRefresh == freezed
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomer implements GetCustomer {
  const _$GetCustomer({required this.isRefresh, required this.customerId});

  @override
  final bool isRefresh;
  @override
  final String customerId;

  @override
  String toString() {
    return 'StripeCustomerEvent.getCustomer(isRefresh: $isRefresh, customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCustomer &&
            const DeepCollectionEquality().equals(other.isRefresh, isRefresh) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isRefresh),
      const DeepCollectionEquality().hash(customerId));

  @JsonKey(ignore: true)
  @override
  $GetCustomerCopyWith<GetCustomer> get copyWith =>
      _$GetCustomerCopyWithImpl<GetCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh, String customerId) getCustomer,
  }) {
    return getCustomer(isRefresh, customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isRefresh, String customerId)? getCustomer,
  }) {
    return getCustomer?.call(isRefresh, customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh, String customerId)? getCustomer,
    required TResult orElse(),
  }) {
    if (getCustomer != null) {
      return getCustomer(isRefresh, customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomer value) getCustomer,
  }) {
    return getCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCustomer value)? getCustomer,
  }) {
    return getCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomer value)? getCustomer,
    required TResult orElse(),
  }) {
    if (getCustomer != null) {
      return getCustomer(this);
    }
    return orElse();
  }
}

abstract class GetCustomer implements StripeCustomerEvent {
  const factory GetCustomer(
      {required bool isRefresh, required String customerId}) = _$GetCustomer;

  @override
  bool get isRefresh;
  @override
  String get customerId;
  @override
  @JsonKey(ignore: true)
  $GetCustomerCopyWith<GetCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StripeCustomerStateTearOff {
  const _$StripeCustomerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _GettingCustomer getting() {
    return const _GettingCustomer();
  }

  _GetError getError() {
    return const _GetError();
  }

  _RefreshingCustomer refreshing() {
    return const _RefreshingCustomer();
  }

  _RefreshError refreshError() {
    return const _RefreshError();
  }

  _CustomerLoaded customerLoaded(StripeCustomerDTO customer) {
    return _CustomerLoaded(
      customer,
    );
  }
}

/// @nodoc
const $StripeCustomerState = _$StripeCustomerStateTearOff();

/// @nodoc
mixin _$StripeCustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripeCustomerStateCopyWith<$Res> {
  factory $StripeCustomerStateCopyWith(
          StripeCustomerState value, $Res Function(StripeCustomerState) then) =
      _$StripeCustomerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StripeCustomerStateCopyWithImpl<$Res>
    implements $StripeCustomerStateCopyWith<$Res> {
  _$StripeCustomerStateCopyWithImpl(this._value, this._then);

  final StripeCustomerState _value;
  // ignore: unused_field
  final $Res Function(StripeCustomerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$StripeCustomerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StripeCustomerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StripeCustomerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$GettingCustomerCopyWith<$Res> {
  factory _$GettingCustomerCopyWith(
          _GettingCustomer value, $Res Function(_GettingCustomer) then) =
      __$GettingCustomerCopyWithImpl<$Res>;
}

/// @nodoc
class __$GettingCustomerCopyWithImpl<$Res>
    extends _$StripeCustomerStateCopyWithImpl<$Res>
    implements _$GettingCustomerCopyWith<$Res> {
  __$GettingCustomerCopyWithImpl(
      _GettingCustomer _value, $Res Function(_GettingCustomer) _then)
      : super(_value, (v) => _then(v as _GettingCustomer));

  @override
  _GettingCustomer get _value => super._value as _GettingCustomer;
}

/// @nodoc

class _$_GettingCustomer implements _GettingCustomer {
  const _$_GettingCustomer();

  @override
  String toString() {
    return 'StripeCustomerState.getting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GettingCustomer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) {
    return getting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) {
    return getting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _GettingCustomer implements StripeCustomerState {
  const factory _GettingCustomer() = _$_GettingCustomer;
}

/// @nodoc
abstract class _$GetErrorCopyWith<$Res> {
  factory _$GetErrorCopyWith(_GetError value, $Res Function(_GetError) then) =
      __$GetErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetErrorCopyWithImpl<$Res>
    extends _$StripeCustomerStateCopyWithImpl<$Res>
    implements _$GetErrorCopyWith<$Res> {
  __$GetErrorCopyWithImpl(_GetError _value, $Res Function(_GetError) _then)
      : super(_value, (v) => _then(v as _GetError));

  @override
  _GetError get _value => super._value as _GetError;
}

/// @nodoc

class _$_GetError implements _GetError {
  const _$_GetError();

  @override
  String toString() {
    return 'StripeCustomerState.getError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) {
    return getError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) {
    return getError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class _GetError implements StripeCustomerState {
  const factory _GetError() = _$_GetError;
}

/// @nodoc
abstract class _$RefreshingCustomerCopyWith<$Res> {
  factory _$RefreshingCustomerCopyWith(
          _RefreshingCustomer value, $Res Function(_RefreshingCustomer) then) =
      __$RefreshingCustomerCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshingCustomerCopyWithImpl<$Res>
    extends _$StripeCustomerStateCopyWithImpl<$Res>
    implements _$RefreshingCustomerCopyWith<$Res> {
  __$RefreshingCustomerCopyWithImpl(
      _RefreshingCustomer _value, $Res Function(_RefreshingCustomer) _then)
      : super(_value, (v) => _then(v as _RefreshingCustomer));

  @override
  _RefreshingCustomer get _value => super._value as _RefreshingCustomer;
}

/// @nodoc

class _$_RefreshingCustomer implements _RefreshingCustomer {
  const _$_RefreshingCustomer();

  @override
  String toString() {
    return 'StripeCustomerState.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RefreshingCustomer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) {
    return refreshing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class _RefreshingCustomer implements StripeCustomerState {
  const factory _RefreshingCustomer() = _$_RefreshingCustomer;
}

/// @nodoc
abstract class _$RefreshErrorCopyWith<$Res> {
  factory _$RefreshErrorCopyWith(
          _RefreshError value, $Res Function(_RefreshError) then) =
      __$RefreshErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshErrorCopyWithImpl<$Res>
    extends _$StripeCustomerStateCopyWithImpl<$Res>
    implements _$RefreshErrorCopyWith<$Res> {
  __$RefreshErrorCopyWithImpl(
      _RefreshError _value, $Res Function(_RefreshError) _then)
      : super(_value, (v) => _then(v as _RefreshError));

  @override
  _RefreshError get _value => super._value as _RefreshError;
}

/// @nodoc

class _$_RefreshError implements _RefreshError {
  const _$_RefreshError();

  @override
  String toString() {
    return 'StripeCustomerState.refreshError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RefreshError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) {
    return refreshError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) {
    return refreshError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) {
    if (refreshError != null) {
      return refreshError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) {
    return refreshError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) {
    return refreshError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) {
    if (refreshError != null) {
      return refreshError(this);
    }
    return orElse();
  }
}

abstract class _RefreshError implements StripeCustomerState {
  const factory _RefreshError() = _$_RefreshError;
}

/// @nodoc
abstract class _$CustomerLoadedCopyWith<$Res> {
  factory _$CustomerLoadedCopyWith(
          _CustomerLoaded value, $Res Function(_CustomerLoaded) then) =
      __$CustomerLoadedCopyWithImpl<$Res>;
  $Res call({StripeCustomerDTO customer});

  $StripeCustomerDTOCopyWith<$Res> get customer;
}

/// @nodoc
class __$CustomerLoadedCopyWithImpl<$Res>
    extends _$StripeCustomerStateCopyWithImpl<$Res>
    implements _$CustomerLoadedCopyWith<$Res> {
  __$CustomerLoadedCopyWithImpl(
      _CustomerLoaded _value, $Res Function(_CustomerLoaded) _then)
      : super(_value, (v) => _then(v as _CustomerLoaded));

  @override
  _CustomerLoaded get _value => super._value as _CustomerLoaded;

  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(_CustomerLoaded(
      customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as StripeCustomerDTO,
    ));
  }

  @override
  $StripeCustomerDTOCopyWith<$Res> get customer {
    return $StripeCustomerDTOCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$_CustomerLoaded implements _CustomerLoaded {
  const _$_CustomerLoaded(this.customer);

  @override
  final StripeCustomerDTO customer;

  @override
  String toString() {
    return 'StripeCustomerState.customerLoaded(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerLoaded &&
            const DeepCollectionEquality().equals(other.customer, customer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customer));

  @JsonKey(ignore: true)
  @override
  _$CustomerLoadedCopyWith<_CustomerLoaded> get copyWith =>
      __$CustomerLoadedCopyWithImpl<_CustomerLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getting,
    required TResult Function() getError,
    required TResult Function() refreshing,
    required TResult Function() refreshError,
    required TResult Function(StripeCustomerDTO customer) customerLoaded,
  }) {
    return customerLoaded(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
  }) {
    return customerLoaded?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getting,
    TResult Function()? getError,
    TResult Function()? refreshing,
    TResult Function()? refreshError,
    TResult Function(StripeCustomerDTO customer)? customerLoaded,
    required TResult orElse(),
  }) {
    if (customerLoaded != null) {
      return customerLoaded(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingCustomer value) getting,
    required TResult Function(_GetError value) getError,
    required TResult Function(_RefreshingCustomer value) refreshing,
    required TResult Function(_RefreshError value) refreshError,
    required TResult Function(_CustomerLoaded value) customerLoaded,
  }) {
    return customerLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
  }) {
    return customerLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingCustomer value)? getting,
    TResult Function(_GetError value)? getError,
    TResult Function(_RefreshingCustomer value)? refreshing,
    TResult Function(_RefreshError value)? refreshError,
    TResult Function(_CustomerLoaded value)? customerLoaded,
    required TResult orElse(),
  }) {
    if (customerLoaded != null) {
      return customerLoaded(this);
    }
    return orElse();
  }
}

abstract class _CustomerLoaded implements StripeCustomerState {
  const factory _CustomerLoaded(StripeCustomerDTO customer) = _$_CustomerLoaded;

  StripeCustomerDTO get customer;
  @JsonKey(ignore: true)
  _$CustomerLoadedCopyWith<_CustomerLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
