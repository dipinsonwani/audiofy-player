import 'package:audiofy/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:audiofy/features/auth/presentation/blocs/auth_state.dart';
import 'package:audiofy/features/auth/presentation/widgets/reactive_button.dart';
import 'package:audiofy/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginForm extends StatefulWidget {
  final bool showForgotPassword;

  const LoginForm({super.key, this.showForgotPassword = false});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: _form,
      builder: (context, formGroup, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ReactiveTextField(
                      formControlName: _email,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                      ),
                      onTapOutside: (_) => FocusScope.of(context).unfocus(),
                    ),
                    const SizedBox(height: 8),
                    ReactiveTextField(
                      formControlName: _password,
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        suffix: InkWell(
                          onTap: showPassword,
                          child: Icon(
                            _showPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      onTapOutside: (_) => FocusScope.of(context).unfocus(),
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) => ReactiveElevatedButton(
                        onPressed: () {
                          context.read<AuthCubit>().signIn(
                              email: formGroup.control(_email).value,
                              password: formGroup.control(_password).value);
                        },
                        child: const Center(child: Text('Sign In')),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          context.router.push(const RegisterRoute());
                        },
                        child: const Text('Not a user? Create account'))
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static const _email = 'email';
  static const _password = 'password';

  FormGroup _form() {
    return fb.group({
      _email: FormControl<String>(validators: [Validators.required]),
      _password: FormControl<String>(validators: [Validators.required]),
    });
  }

  void showPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }
}
