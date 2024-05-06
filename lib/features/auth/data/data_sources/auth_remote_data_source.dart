import 'package:audiofy/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Stream<User?> get authUser;

  Future<UserModel> signInWithEmailAndPassword(String email, String password);

  Future<UserModel> signUpWithEmailAndPassword(
      String email, String password, String name);

  Future<void> signOut();
}
