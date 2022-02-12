import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_stripe/domain/user_failure.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_subscriber_event.dart';

part 'user_subscriber_state.dart';

part 'user_subscriber_bloc.freezed.dart';

class UserSubscriberBloc
    extends Bloc<UserSubscriberEvent, UserSubscriberState> {
  final UserRepository _userRepository;

  StreamSubscription<Either<UserFailure, UserDTO?>>? _userStreamSub;

  UserSubscriberBloc(this._userRepository)
      : super(const UserSubscriberState.initial()) {
    on<UserSubscriberEvent>(
      (event, emit) async {
        await event.map(
          subscribe: (e) async => _subscribeEvent(
            e: e,
            emit: emit,
          ),
          userReceived: (e) async => _userReceivedEvent(
            e: e,
            emit: emit,
          ),
        );
      },
    );
  }

  Future<void> _subscribeEvent({
    required Subscribe e,
    required Emitter<UserSubscriberState> emit,
  }) async {
    emit(const UserSubscriberState.subscribing());

    await _userStreamSub?.cancel();

    final uid = FirebaseAuth.instance.currentUser?.uid;
    _userStreamSub = _userRepository.getUserById(uid).listen(
          (failureOrUser) =>
              add(UserSubscriberEvent.userReceived(failureOrUser)),
        );
  }

  Future<void> _userReceivedEvent({
    required UserReceived e,
    required Emitter<UserSubscriberState> emit,
  }) async {
    emit(
      e.failureOrUser.fold(
        (l) => const UserSubscriberState.subscribingError(),
        (user) => user != null
            ? UserSubscriberState.subscribed(user: user)
            : const UserSubscriberState.subscribingError(),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _userStreamSub?.cancel();
    return super.close();
  }
}
