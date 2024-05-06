// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = _AuthenticatedAuthState;
  const factory AuthState.unauthenticated() = _UnAuthenticatedState;
  const factory AuthState.error() = _ErrorAuthState;
  const factory AuthState.loading() = _LoadingAuthState;
}
