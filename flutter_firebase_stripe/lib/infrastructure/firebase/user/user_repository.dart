import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_firebase_stripe/domain/user_failure.dart';
import 'package:flutter_firebase_stripe/infrastructure/firebase/user/user_dto.dart';
import 'package:rxdart/rxdart.dart';

class UserRepository {
  Stream<Either<UserFailure, UserDTO?>> getUserById(String? id) async* {
    final ref = FirebaseFirestore.instance
        .collection('users')
        .withConverter<UserDTO>(
          fromFirestore: (snapshots, _) =>
              UserDTO.fromJson(snapshots.data()!).copyWith(id: snapshots.id),
          toFirestore: (user, _) => user.toJson(),
        );

    yield* ref
        .doc(id)
        .snapshots()
        .map(
          (doc) => right<UserFailure, UserDTO?>(doc.data()),
        )
        .onErrorReturnWith(
      (error, _) {
        print(error.toString());
        return left(
          const UserFailure.unableToLoad(),
        );
      },
    );
  }
}
