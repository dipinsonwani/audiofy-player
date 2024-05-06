import 'package:audiofy/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:audiofy/features/auth/presentation/blocs/auth_state.dart';
import 'package:audiofy/features/auth/presentation/widgets/reactive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();

  static const _firstName = 'firstName';
  static const _email = 'email';
  static const _password = 'password';
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ReactiveFormBuilder(
              form: _form,
              builder: (context, _, __) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 16),
                          ReactiveTextField(
                            formControlName: RegisterForm._firstName,
                            textCapitalization: TextCapitalization.words,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              hintText: 'First Name',
                              labelText: 'First Name',
                            ),
                            onTapOutside: (_) =>
                                FocusScope.of(context).unfocus(),
                            validationMessages: {
                              'required': (_) => 'First name is required',
                            },
                          ),
                          const SizedBox(height: 16),
                          ReactiveTextField(
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            formControlName: RegisterForm._email,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
                            ),
                            onTapOutside: (_) =>
                                FocusScope.of(context).unfocus(),
                            validationMessages: {
                              'required': (_) => 'Email is required',
                              'email': (_) => 'Invalid format',
                            },
                          ),
                          const SizedBox(height: 16),
                          ReactiveTextField(
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.visiblePassword,
                            autocorrect: false,
                            formControlName: RegisterForm._password,
                            obscureText: showPassword,
                            decoration: InputDecoration(
                              suffixIcon: _visibilityToggle,
                              hintText: 'Password',
                              labelText: 'Password',
                            ),
                            onTapOutside: (_) =>
                                FocusScope.of(context).unfocus(),
                            validationMessages: {
                              'required': (_) => 'Password is required',
                              'minLength': (_) =>
                                  'Password must have 6 characters',
                            },
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ReactiveFormConsumer(
                        builder: (context, formGroup, _) =>
                            ReactiveElevatedButton(
                          onPressed: () => _nextStep(context, formGroup),
                          child: const Center(child: Text('Continue')),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _nextStep(BuildContext context, FormGroup form) {
    final firstName = _getFormValue<String>(form, RegisterForm._firstName);
    final email = _getFormValue<String>(form, RegisterForm._email);
    final password = _getFormValue<String>(form, RegisterForm._password);

    context
        .read<AuthCubit>()
        .signUp(email: email, password: password, name: firstName);
  }

  Widget get _visibilityToggle {
    return GestureDetector(
      onTap: () {
        showPassword = !showPassword;
      },
      child: Icon(
        showPassword ? Icons.visibility : Icons.visibility_off,
      ),
    );
  }

  bool _showPassword = false;

  bool get showPassword => _showPassword;

  set showPassword(bool v) {
    setState(() {
      _showPassword = v;
    });
  }

  T _getFormValue<T>(FormGroup form, String name) =>
      form.control(name).value as T;

  FormGroup _form() => fb.group(
        {
          RegisterForm._firstName: FormControl<String>(
            validators: [Validators.required],
            // value: 'Test',
          ),
          RegisterForm._email: FormControl<String>(
            validators: [
              Validators.required,
              Validators.email,
            ],
          ),
          RegisterForm._password: FormControl<String>(
            validators: [
              Validators.required,
              Validators.minLength(6),
            ],
          ),
        },
      );
}
