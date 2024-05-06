import 'package:audiofy/features/auth/domain/entities/user_entity.dart';
import 'package:audiofy/features/auth/domain/repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase({required this.repository});

  Future<UserEntity> call(String email, String password, String name) async {
    try {
      final user =
          await repository.signUp(email: email, password: password, name: name);
      return user;
    } catch (e) {
      throw Exception(e);
    }
  }
}
