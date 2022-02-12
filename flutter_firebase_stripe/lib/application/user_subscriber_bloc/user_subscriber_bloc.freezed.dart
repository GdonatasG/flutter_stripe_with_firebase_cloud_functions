// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_subscriber_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSubscriberEventTearOff {
  const _$UserSubscriberEventTearOff();

  Subscribe subscribe() {
    return const Subscribe();
  }

  UserReceived userReceived(Either<UserFailure, UserDTO?> failureOrUser) {
    return UserReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
const $UserSubscriberEvent = _$UserSubscriberEventTearOff();

/// @nodoc
mixin _$UserSubscriberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(Either<UserFailure, UserDTO?> failureOrUser)
        userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(Either<UserFailure, UserDTO?> failureOrUser)? userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(Either<UserFailure, UserDTO?> failureOrUser)? userReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(UserReceived value) userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(UserReceived value)? userReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(UserReceived value)? userReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSubscriberEventCopyWith<$Res> {
  factory $UserSubscriberEventCopyWith(
          UserSubscriberEvent value, $Res Function(UserSubscriberEvent) then) =
      _$UserSubscriberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSubscriberEventCopyWithImpl<$Res>
    implements $UserSubscriberEventCopyWith<$Res> {
  _$UserSubscriberEventCopyWithImpl(this._value, this._then);

  final UserSubscriberEvent _value;
  // ignore: unused_field
  final $Res Function(UserSubscriberEvent) _then;
}

/// @nodoc
abstract class $SubscribeCopyWith<$Res> {
  factory $SubscribeCopyWith(Subscribe value, $Res Function(Subscribe) then) =
      _$SubscribeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscribeCopyWithImpl<$Res>
    extends _$UserSubscriberEventCopyWithImpl<$Res>
    implements $SubscribeCopyWith<$Res> {
  _$SubscribeCopyWithImpl(Subscribe _value, $Res Function(Subscribe) _then)
      : super(_value, (v) => _then(v as Subscribe));

  @override
  Subscribe get _value => super._value as Subscribe;
}

/// @nodoc

class _$Subscribe implements Subscribe {
  const _$Subscribe();

  @override
  String toString() {
    return 'UserSubscriberEvent.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Subscribe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(Either<UserFailure, UserDTO?> failureOrUser)
        userReceived,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(Either<UserFailure, UserDTO?> failureOrUser)? userReceived,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(Either<UserFailure, UserDTO?> failureOrUser)? userReceived,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(UserReceived value) userReceived,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(UserReceived value)? userReceived,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class Subscribe implements UserSubscriberEvent {
  const factory Subscribe() = _$Subscribe;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, UserDTO?> failureOrUser});
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res>
    extends _$UserSubscriberEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(UserReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, UserDTO?>,
    ));
  }
}

/// @nodoc

class _$UserReceived implements UserReceived {
  const _$UserReceived(this.failureOrUser);

  @override
  final Either<UserFailure, UserDTO?> failureOrUser;

  @override
  String toString() {
    return 'UserSubscriberEvent.userReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrUser, failureOrUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUser));

  @JsonKey(ignore: true)
  @override
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      _$UserReceivedCopyWithImpl<UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(Either<UserFailure, UserDTO?> failureOrUser)
        userReceived,
  }) {
    return userReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(Either<UserFailure, UserDTO?> failureOrUser)? userReceived,
  }) {
    return userReceived?.call(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(Either<UserFailure, UserDTO?> failureOrUser)? userReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(UserReceived value) userReceived,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(UserReceived value)? userReceived,
  }) {
    return userReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(UserReceived value)? userReceived,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements UserSubscriberEvent {
  const factory UserReceived(Either<UserFailure, UserDTO?> failureOrUser) =
      _$UserReceived;

  Either<UserFailure, UserDTO?> get failureOrUser;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserSubscriberStateTearOff {
  const _$UserSubscriberStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Subscribing subscribing() {
    return const _Subscribing();
  }

  _Subscribed subscribed({required UserDTO user}) {
    return _Subscribed(
      user: user,
    );
  }

  _SubscribingError subscribingError() {
    return const _SubscribingError();
  }
}

/// @nodoc
const $UserSubscriberState = _$UserSubscriberStateTearOff();

/// @nodoc
mixin _$UserSubscriberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribing,
    required TResult Function(UserDTO user) subscribed,
    required TResult Function() subscribingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribing value) subscribing,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_SubscribingError value) subscribingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSubscriberStateCopyWith<$Res> {
  factory $UserSubscriberStateCopyWith(
          UserSubscriberState value, $Res Function(UserSubscriberState) then) =
      _$UserSubscriberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSubscriberStateCopyWithImpl<$Res>
    implements $UserSubscriberStateCopyWith<$Res> {
  _$UserSubscriberStateCopyWithImpl(this._value, this._then);

  final UserSubscriberState _value;
  // ignore: unused_field
  final $Res Function(UserSubscriberState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserSubscriberStateCopyWithImpl<$Res>
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
    return 'UserSubscriberState.initial()';
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
    required TResult Function() subscribing,
    required TResult Function(UserDTO user) subscribed,
    required TResult Function() subscribingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
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
    required TResult Function(_Subscribing value) subscribing,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_SubscribingError value) subscribingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserSubscriberState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SubscribingCopyWith<$Res> {
  factory _$SubscribingCopyWith(
          _Subscribing value, $Res Function(_Subscribing) then) =
      __$SubscribingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscribingCopyWithImpl<$Res>
    extends _$UserSubscriberStateCopyWithImpl<$Res>
    implements _$SubscribingCopyWith<$Res> {
  __$SubscribingCopyWithImpl(
      _Subscribing _value, $Res Function(_Subscribing) _then)
      : super(_value, (v) => _then(v as _Subscribing));

  @override
  _Subscribing get _value => super._value as _Subscribing;
}

/// @nodoc

class _$_Subscribing implements _Subscribing {
  const _$_Subscribing();

  @override
  String toString() {
    return 'UserSubscriberState.subscribing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Subscribing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribing,
    required TResult Function(UserDTO user) subscribed,
    required TResult Function() subscribingError,
  }) {
    return subscribing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
  }) {
    return subscribing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
    required TResult orElse(),
  }) {
    if (subscribing != null) {
      return subscribing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribing value) subscribing,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_SubscribingError value) subscribingError,
  }) {
    return subscribing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
  }) {
    return subscribing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
    required TResult orElse(),
  }) {
    if (subscribing != null) {
      return subscribing(this);
    }
    return orElse();
  }
}

abstract class _Subscribing implements UserSubscriberState {
  const factory _Subscribing() = _$_Subscribing;
}

/// @nodoc
abstract class _$SubscribedCopyWith<$Res> {
  factory _$SubscribedCopyWith(
          _Subscribed value, $Res Function(_Subscribed) then) =
      __$SubscribedCopyWithImpl<$Res>;
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$SubscribedCopyWithImpl<$Res>
    extends _$UserSubscriberStateCopyWithImpl<$Res>
    implements _$SubscribedCopyWith<$Res> {
  __$SubscribedCopyWithImpl(
      _Subscribed _value, $Res Function(_Subscribed) _then)
      : super(_value, (v) => _then(v as _Subscribed));

  @override
  _Subscribed get _value => super._value as _Subscribed;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Subscribed(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Subscribed implements _Subscribed {
  const _$_Subscribed({required this.user});

  @override
  final UserDTO user;

  @override
  String toString() {
    return 'UserSubscriberState.subscribed(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subscribed &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$SubscribedCopyWith<_Subscribed> get copyWith =>
      __$SubscribedCopyWithImpl<_Subscribed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribing,
    required TResult Function(UserDTO user) subscribed,
    required TResult Function() subscribingError,
  }) {
    return subscribed(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
  }) {
    return subscribed?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribing value) subscribing,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_SubscribingError value) subscribingError,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class _Subscribed implements UserSubscriberState {
  const factory _Subscribed({required UserDTO user}) = _$_Subscribed;

  UserDTO get user;
  @JsonKey(ignore: true)
  _$SubscribedCopyWith<_Subscribed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubscribingErrorCopyWith<$Res> {
  factory _$SubscribingErrorCopyWith(
          _SubscribingError value, $Res Function(_SubscribingError) then) =
      __$SubscribingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscribingErrorCopyWithImpl<$Res>
    extends _$UserSubscriberStateCopyWithImpl<$Res>
    implements _$SubscribingErrorCopyWith<$Res> {
  __$SubscribingErrorCopyWithImpl(
      _SubscribingError _value, $Res Function(_SubscribingError) _then)
      : super(_value, (v) => _then(v as _SubscribingError));

  @override
  _SubscribingError get _value => super._value as _SubscribingError;
}

/// @nodoc

class _$_SubscribingError implements _SubscribingError {
  const _$_SubscribingError();

  @override
  String toString() {
    return 'UserSubscriberState.subscribingError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SubscribingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribing,
    required TResult Function(UserDTO user) subscribed,
    required TResult Function() subscribingError,
  }) {
    return subscribingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
  }) {
    return subscribingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribing,
    TResult Function(UserDTO user)? subscribed,
    TResult Function()? subscribingError,
    required TResult orElse(),
  }) {
    if (subscribingError != null) {
      return subscribingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribing value) subscribing,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_SubscribingError value) subscribingError,
  }) {
    return subscribingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
  }) {
    return subscribingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribing value)? subscribing,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_SubscribingError value)? subscribingError,
    required TResult orElse(),
  }) {
    if (subscribingError != null) {
      return subscribingError(this);
    }
    return orElse();
  }
}

abstract class _SubscribingError implements UserSubscriberState {
  const factory _SubscribingError() = _$_SubscribingError;
}
