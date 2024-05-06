import 'package:audiofy/features/auth/domain/usecases/sign_in_use_case.dart';
import 'package:audiofy/features/auth/domain/usecases/sign_out_use_case.dart';
import 'package:audiofy/features/auth/domain/usecases/sign_up_use_case.dart';
import 'package:audiofy/features/auth/domain/usecases/stream_auth_user_use_case.dart';
import 'package:audiofy/features/auth/presentation/blocs/auth_state.dart';
import 'package:bloc/bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;
  final SignOutUseCase signOutUseCase;
  final StreamAuthUserUsecase streamAuthUserUsecase;
  AuthCubit(
      {required this.signInUseCase,
      required this.signUpUseCase,
      required this.signOutUseCase,
      required this.streamAuthUserUsecase})
      : super(const AuthState.loading());

  Future<void> initial() async {
    try {
      final user = await streamAuthUserUsecase.call().first;
      if (user == null) {
        emit(const AuthState.unauthenticated());
      } else {
        emit(const AuthState.authenticated());
      }
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      emit(const AuthState.loading());
      await signInUseCase.call(email, password);
      emit(const AuthState.authenticated());
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      emit(const AuthState.loading());
      await signUpUseCase.call(email, password, name);
      emit(const AuthState.authenticated());
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> signOut() async {
    try {
      emit(const AuthState.loading());
      await signOutUseCase.call();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(const AuthState.error());
    }
  }
}
