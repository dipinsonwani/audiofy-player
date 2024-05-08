import 'package:audiofy/features/auth/presentation/widgets/login_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/audiofy.png',
                  color: Theme.of(context).primaryColor,
                  scale: 8,
                ),
              ),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
