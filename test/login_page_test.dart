// ignore_for_file: depend_on_referenced_packages

import 'package:audiofy/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:audiofy/features/auth/presentation/blocs/auth_state.dart';
import 'package:audiofy/features/auth/presentation/widgets/login_form.dart';
import 'package:audiofy/features/auth/presentation/widgets/reactive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mocktail/mocktail.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MockAuthCubit extends Mock implements AuthCubit {}

void main() {
  late AuthCubit authCubit;

  setUp(() {
    authCubit = MockAuthCubit();
    when(() => authCubit.state).thenReturn(const AuthState.unauthenticated());
    when(() => authCubit.stream).thenAnswer(
        ((invocation) => Stream.value(const AuthState.unauthenticated())));
  });

  Widget createWidgetUnderTest() {
    return BlocProvider.value(
      value: authCubit,
      child: const MaterialApp(
          home: Scaffold(
        body: LoginForm(),
      )),
    );
  }

  testWidgets('Login Page UI Widgets renders successful', (widgetTester) async {
    await widgetTester.pumpWidget(createWidgetUnderTest());
    expect(find.widgetWithText(ReactiveTextField, 'Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.byType(ReactiveElevatedButton), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
  });
}
