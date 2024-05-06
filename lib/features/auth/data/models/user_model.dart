// ignore_for_file: depend_on_referenced_packages

import 'package:audiofy/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String emailId,
    required String name,
  }) = _UserModel;

  factory UserModel.fromFirebaseUser(User firebaseUser) => UserModel(
      id: firebaseUser.uid,
      emailId: firebaseUser.email ?? '',
      name: firebaseUser.displayName ?? '');
}

extension UserEntityMap on UserModel {
  UserEntity toEntity() => UserEntity(id: id, emailId: emailId, name: name);
}
