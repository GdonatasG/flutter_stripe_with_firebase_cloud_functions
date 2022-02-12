part of 'user_subscriber_bloc.dart';

@freezed
abstract class UserSubscriberEvent with _$UserSubscriberEvent {
  const factory UserSubscriberEvent.subscribe() = Subscribe;

  const factory UserSubscriberEvent.userReceived(
    Either<UserFailure, UserDTO?> failureOrUser,
  ) = UserReceived;
}
