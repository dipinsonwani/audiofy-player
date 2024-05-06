import 'package:audiofy/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Stream<User?> get authUser;

  Future<UserEntity> signIn({required String email, required String password});

  Future<UserEntity> signUp(
      {required String email, required String password, required String name});

  Future<void> signOut();
}
