import 'package:audiofy/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:audiofy/features/auth/data/models/user_model.dart';
import 'package:audiofy/features/auth/domain/entities/user_entity.dart';
import 'package:audiofy/features/auth/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});
  @override
  Future<UserEntity> signIn(
      {required String email, required String password}) async {
    final user =
        await authRemoteDataSource.signInWithEmailAndPassword(email, password);
    return user.toEntity();
  }

  @override
  Future<void> signOut() async {
    await authRemoteDataSource.signOut();
  }

  @override
  Future<UserEntity> signUp(
      {required String email,
      required String password,
      required String name}) async {
    final user = await authRemoteDataSource.signUpWithEmailAndPassword(
        email, password, name);
    return user.toEntity();
  }

  @override
  Stream<User?> get authUser => authRemoteDataSource.authUser;
}
