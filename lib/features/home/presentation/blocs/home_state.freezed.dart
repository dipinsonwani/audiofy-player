// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SongEntity> songs) songsFetched,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SongEntity> songs)? songsFetched,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SongEntity> songs)? songsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SongsFetchedState value) songsFetched,
    required TResult Function(ErrorHomeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SongsFetchedState value)? songsFetched,
    TResult? Function(ErrorHomeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SongsFetchedState value)? songsFetched,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingHomeStateImplCopyWith<$Res> {
  factory _$$LoadingHomeStateImplCopyWith(_$LoadingHomeStateImpl value,
          $Res Function(_$LoadingHomeStateImpl) then) =
      __$$LoadingHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeStateImpl>
    implements _$$LoadingHomeStateImplCopyWith<$Res> {
  __$$LoadingHomeStateImplCopyWithImpl(_$LoadingHomeStateImpl _value,
      $Res Function(_$LoadingHomeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHomeStateImpl implements LoadingHomeState {
  const _$LoadingHomeStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SongEntity> songs) songsFetched,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SongEntity> songs)? songsFetched,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SongEntity> songs)? songsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SongsFetchedState value) songsFetched,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SongsFetchedState value)? songsFetched,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SongsFetchedState value)? songsFetched,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState() = _$LoadingHomeStateImpl;
}

/// @nodoc
abstract class _$$SongsFetchedStateImplCopyWith<$Res> {
  factory _$$SongsFetchedStateImplCopyWith(_$SongsFetchedStateImpl value,
          $Res Function(_$SongsFetchedStateImpl) then) =
      __$$SongsFetchedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SongEntity> songs});
}

/// @nodoc
class __$$SongsFetchedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SongsFetchedStateImpl>
    implements _$$SongsFetchedStateImplCopyWith<$Res> {
  __$$SongsFetchedStateImplCopyWithImpl(_$SongsFetchedStateImpl _value,
      $Res Function(_$SongsFetchedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_$SongsFetchedStateImpl(
      null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongEntity>,
    ));
  }
}

/// @nodoc

class _$SongsFetchedStateImpl implements SongsFetchedState {
  const _$SongsFetchedStateImpl(final List<SongEntity> songs) : _songs = songs;

  final List<SongEntity> _songs;
  @override
  List<SongEntity> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'HomeState.songsFetched(songs: $songs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongsFetchedStateImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongsFetchedStateImplCopyWith<_$SongsFetchedStateImpl> get copyWith =>
      __$$SongsFetchedStateImplCopyWithImpl<_$SongsFetchedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SongEntity> songs) songsFetched,
    required TResult Function() error,
  }) {
    return songsFetched(songs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SongEntity> songs)? songsFetched,
    TResult? Function()? error,
  }) {
    return songsFetched?.call(songs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SongEntity> songs)? songsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (songsFetched != null) {
      return songsFetched(songs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SongsFetchedState value) songsFetched,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return songsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SongsFetchedState value)? songsFetched,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return songsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SongsFetchedState value)? songsFetched,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (songsFetched != null) {
      return songsFetched(this);
    }
    return orElse();
  }
}

abstract class SongsFetchedState implements HomeState {
  const factory SongsFetchedState(final List<SongEntity> songs) =
      _$SongsFetchedStateImpl;

  List<SongEntity> get songs;
  @JsonKey(ignore: true)
  _$$SongsFetchedStateImplCopyWith<_$SongsFetchedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorHomeStateImplCopyWith<$Res> {
  factory _$$ErrorHomeStateImplCopyWith(_$ErrorHomeStateImpl value,
          $Res Function(_$ErrorHomeStateImpl) then) =
      __$$ErrorHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeStateImpl>
    implements _$$ErrorHomeStateImplCopyWith<$Res> {
  __$$ErrorHomeStateImplCopyWithImpl(
      _$ErrorHomeStateImpl _value, $Res Function(_$ErrorHomeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorHomeStateImpl implements ErrorHomeState {
  const _$ErrorHomeStateImpl();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorHomeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SongEntity> songs) songsFetched,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SongEntity> songs)? songsFetched,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SongEntity> songs)? songsFetched,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SongsFetchedState value) songsFetched,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SongsFetchedState value)? songsFetched,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SongsFetchedState value)? songsFetched,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorHomeState implements HomeState {
  const factory ErrorHomeState() = _$ErrorHomeStateImpl;
}
