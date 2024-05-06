import 'package:audiofy/features/auth/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StreamAuthUserUsecase {
  final AuthRepository authRepository;

  StreamAuthUserUsecase({required this.authRepository});

  Stream<User?> call() => authRepository.authUser;
}
