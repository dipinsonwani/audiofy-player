import 'package:audiofy/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase {
  final AuthRepository repository;

  SignOutUseCase({required this.repository});

  Future<void> call() async {
    try {
      await repository.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
