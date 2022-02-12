// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFailureTearOff {
  const _$UserFailureTearOff();

  _UnableToLoad unableToLoad() {
    return const _UnableToLoad();
  }
}

/// @nodoc
const $UserFailure = _$UserFailureTearOff();

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unableToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unableToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unableToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnableToLoad value) unableToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnableToLoad value)? unableToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnableToLoad value)? unableToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

/// @nodoc
abstract class _$UnableToLoadCopyWith<$Res> {
  factory _$UnableToLoadCopyWith(
          _UnableToLoad value, $Res Function(_UnableToLoad) then) =
      __$UnableToLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnableToLoadCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements _$UnableToLoadCopyWith<$Res> {
  __$UnableToLoadCopyWithImpl(
      _UnableToLoad _value, $Res Function(_UnableToLoad) _then)
      : super(_value, (v) => _then(v as _UnableToLoad));

  @override
  _UnableToLoad get _value => super._value as _UnableToLoad;
}

/// @nodoc

class _$_UnableToLoad implements _UnableToLoad {
  const _$_UnableToLoad();

  @override
  String toString() {
    return 'UserFailure.unableToLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnableToLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unableToLoad,
  }) {
    return unableToLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unableToLoad,
  }) {
    return unableToLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unableToLoad,
    required TResult orElse(),
  }) {
    if (unableToLoad != null) {
      return unableToLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnableToLoad value) unableToLoad,
  }) {
    return unableToLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnableToLoad value)? unableToLoad,
  }) {
    return unableToLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnableToLoad value)? unableToLoad,
    required TResult orElse(),
  }) {
    if (unableToLoad != null) {
      return unableToLoad(this);
    }
    return orElse();
  }
}

abstract class _UnableToLoad implements UserFailure {
  const factory _UnableToLoad() = _$_UnableToLoad;
}
