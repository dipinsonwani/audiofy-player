import 'package:audiofy/features/theme/presentation/blocs/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleThemeButton extends StatelessWidget {
  static const String heroTag = 'toggleThemeButton';

  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => Hero(
          tag: heroTag,
          child: IconButton(
            onPressed: () => context.read<ThemeBloc>().add(
                  state.map(
                    dark: (_) => const ThemeLightEvent(),
                    light: (_) => const ThemeDarkEvent(),
                  ),
                ),
            icon: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) => Icon(
                state.map(
                  dark: (value) => Icons.light_mode,
                  light: (value) => Icons.dark_mode,
                ),
              ),
            ),
          ),
        ),
      );
}
