// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String emailId,
    required String name,
  }) = _UserEntity;
}
