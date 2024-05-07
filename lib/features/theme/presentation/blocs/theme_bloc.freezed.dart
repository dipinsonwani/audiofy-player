// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeDarkEvent value) dark,
    required TResult Function(ThemeLightEvent value) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeDarkEvent value)? dark,
    TResult? Function(ThemeLightEvent value)? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeDarkEvent value)? dark,
    TResult Function(ThemeLightEvent value)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeDarkEventImplCopyWith<$Res> {
  factory _$$ThemeDarkEventImplCopyWith(_$ThemeDarkEventImpl value,
          $Res Function(_$ThemeDarkEventImpl) then) =
      __$$ThemeDarkEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeDarkEventImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeDarkEventImpl>
    implements _$$ThemeDarkEventImplCopyWith<$Res> {
  __$$ThemeDarkEventImplCopyWithImpl(
      _$ThemeDarkEventImpl _value, $Res Function(_$ThemeDarkEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeDarkEventImpl implements ThemeDarkEvent {
  const _$ThemeDarkEventImpl();

  @override
  String toString() {
    return 'ThemeEvent.dark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeDarkEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeDarkEvent value) dark,
    required TResult Function(ThemeLightEvent value) light,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeDarkEvent value)? dark,
    TResult? Function(ThemeLightEvent value)? light,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeDarkEvent value)? dark,
    TResult Function(ThemeLightEvent value)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class ThemeDarkEvent implements ThemeEvent {
  const factory ThemeDarkEvent() = _$ThemeDarkEventImpl;
}

/// @nodoc
abstract class _$$ThemeLightEventImplCopyWith<$Res> {
  factory _$$ThemeLightEventImplCopyWith(_$ThemeLightEventImpl value,
          $Res Function(_$ThemeLightEventImpl) then) =
      __$$ThemeLightEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeLightEventImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeLightEventImpl>
    implements _$$ThemeLightEventImplCopyWith<$Res> {
  __$$ThemeLightEventImplCopyWithImpl(
      _$ThemeLightEventImpl _value, $Res Function(_$ThemeLightEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeLightEventImpl implements ThemeLightEvent {
  const _$ThemeLightEventImpl();

  @override
  String toString() {
    return 'ThemeEvent.light()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeLightEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeDarkEvent value) dark,
    required TResult Function(ThemeLightEvent value) light,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeDarkEvent value)? dark,
    TResult? Function(ThemeLightEvent value)? light,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeDarkEvent value)? dark,
    TResult Function(ThemeLightEvent value)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class ThemeLightEvent implements ThemeEvent {
  const factory ThemeLightEvent() = _$ThemeLightEventImpl;
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeDarkState value) dark,
    required TResult Function(ThemeLightState value) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeDarkState value)? dark,
    TResult? Function(ThemeLightState value)? light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeDarkState value)? dark,
    TResult Function(ThemeLightState value)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeDarkStateImplCopyWith<$Res> {
  factory _$$ThemeDarkStateImplCopyWith(_$ThemeDarkStateImpl value,
          $Res Function(_$ThemeDarkStateImpl) then) =
      __$$ThemeDarkStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeDarkStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeDarkStateImpl>
    implements _$$ThemeDarkStateImplCopyWith<$Res> {
  __$$ThemeDarkStateImplCopyWithImpl(
      _$ThemeDarkStateImpl _value, $Res Function(_$ThemeDarkStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeDarkStateImpl implements ThemeDarkState {
  const _$ThemeDarkStateImpl();

  @override
  String toString() {
    return 'ThemeState.dark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeDarkStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeDarkState value) dark,
    required TResult Function(ThemeLightState value) light,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeDarkState value)? dark,
    TResult? Function(ThemeLightState value)? light,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeDarkState value)? dark,
    TResult Function(ThemeLightState value)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class ThemeDarkState implements ThemeState {
  const factory ThemeDarkState() = _$ThemeDarkStateImpl;
}

/// @nodoc
abstract class _$$ThemeLightStateImplCopyWith<$Res> {
  factory _$$ThemeLightStateImplCopyWith(_$ThemeLightStateImpl value,
          $Res Function(_$ThemeLightStateImpl) then) =
      __$$ThemeLightStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeLightStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeLightStateImpl>
    implements _$$ThemeLightStateImplCopyWith<$Res> {
  __$$ThemeLightStateImplCopyWithImpl(
      _$ThemeLightStateImpl _value, $Res Function(_$ThemeLightStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeLightStateImpl implements ThemeLightState {
  const _$ThemeLightStateImpl();

  @override
  String toString() {
    return 'ThemeState.light()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeLightStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dark,
    TResult? Function()? light,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeDarkState value) dark,
    required TResult Function(ThemeLightState value) light,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeDarkState value)? dark,
    TResult? Function(ThemeLightState value)? light,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeDarkState value)? dark,
    TResult Function(ThemeLightState value)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class ThemeLightState implements ThemeState {
  const factory ThemeLightState() = _$ThemeLightStateImpl;
}
