import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? backgroundColor;

  const ReactiveElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) => ReactiveFormConsumer(
        child: child,
        builder: (context, form, child) => ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          onPressed: form.valid ? onPressed : null,
          child: child,
        ),
      );
}
