import 'package:audiofy/features/auth/domain/entities/user_entity.dart';
import 'package:audiofy/features/auth/domain/repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  Future<UserEntity> call(String email, String password) async {
    try {
      return await authRepository.signIn(email: email, password: password);
    } catch (e) {
      throw Exception('Sign In Failed : $e');
    }
  }
}
