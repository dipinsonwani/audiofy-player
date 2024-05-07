// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc([ThemeState? initialState])
      : super(initialState ?? const ThemeLightState()) {
    on<ThemeDarkEvent>(
      (event, emit) => emit(const ThemeDarkState()),
    );
    on<ThemeLightEvent>(
      (event, emit) => emit(const ThemeLightState()),
    );
  }
}

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.dark() = ThemeDarkEvent;

  const factory ThemeEvent.light() = ThemeLightEvent;
}

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.dark() = ThemeDarkState;

  const factory ThemeState.light() = ThemeLightState;
}
