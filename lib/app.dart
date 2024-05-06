import 'package:audiofy/features/auth/data/data_sources/auth_remote_data_source_impl.dart';
import 'package:audiofy/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:audiofy/features/auth/domain/usecases/sign_in_use_case.dart';
import 'package:audiofy/features/auth/domain/usecases/sign_out_use_case.dart';
import 'package:audiofy/features/auth/domain/usecases/sign_up_use_case.dart';
import 'package:audiofy/features/auth/domain/usecases/stream_auth_user_use_case.dart';
import 'package:audiofy/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:audiofy/features/auth/presentation/blocs/auth_state.dart';
import 'package:audiofy/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApplication extends StatelessWidget {
  final RootStackRouter router;
  const MainApplication({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    final userCollection = FirebaseFirestore.instance.collection('users');
    final authRepository = AuthRepositoryImpl(
        authRemoteDataSource: AuthRemoteDataSourceImpl(
      userCollection: userCollection,
    ));
    return BlocProvider(
      create: (context) => AuthCubit(
          signInUseCase: SignInUseCase(authRepository: authRepository),
          signUpUseCase: SignUpUseCase(repository: authRepository),
          signOutUseCase: SignOutUseCase(repository: authRepository),
          streamAuthUserUsecase: StreamAuthUserUsecase(
            authRepository: authRepository,
          ))
        ..initial(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          router.replaceAll([
            state.maybeMap(
              orElse: () => const RegisterRoute(),
              unauthenticated: (value) => const LoginRoute(),
              authenticated: (value) => const HomeRoute(),
              loading: (value) => const LoadingRoute(),
            ),
          ]);
        },
        builder: (context, state) {
          return MaterialApp.router(
            routeInformationParser: router.defaultRouteParser(),
            routerDelegate: router.delegate(),
          );
        },
      ),
    );
  }
}