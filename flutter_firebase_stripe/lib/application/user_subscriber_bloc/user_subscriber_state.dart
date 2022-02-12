part of 'user_subscriber_bloc.dart';

@freezed
abstract class UserSubscriberState with _$UserSubscriberState {
  const factory UserSubscriberState.initial() = _Initial;

  const factory UserSubscriberState.subscribing() = _Subscribing;

  const factory UserSubscriberState.subscribed({
    required UserDTO user,
  }) = _Subscribed;

  const factory UserSubscriberState.subscribingError() = _SubscribingError;
}
