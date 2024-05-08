// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = AuthenticatedAuthState;
  const factory AuthState.unauthenticated() = UnAuthenticatedState;
  const factory AuthState.error({String? message}) = ErrorAuthState;
  const factory AuthState.loading() = LoadingAuthState;
}
