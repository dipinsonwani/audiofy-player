// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongModel {
  String get id => throw _privateConstructorUsedError;
  String get songName => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get songUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongModelCopyWith<SongModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongModelCopyWith<$Res> {
  factory $SongModelCopyWith(SongModel value, $Res Function(SongModel) then) =
      _$SongModelCopyWithImpl<$Res, SongModel>;
  @useResult
  $Res call(
      {String id,
      String songName,
      String artistName,
      String songUrl,
      String imageUrl,
      bool isFavourite});
}

/// @nodoc
class _$SongModelCopyWithImpl<$Res, $Val extends SongModel>
    implements $SongModelCopyWith<$Res> {
  _$SongModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songName = null,
    Object? artistName = null,
    Object? songUrl = null,
    Object? imageUrl = null,
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongModelImplCopyWith<$Res>
    implements $SongModelCopyWith<$Res> {
  factory _$$SongModelImplCopyWith(
          _$SongModelImpl value, $Res Function(_$SongModelImpl) then) =
      __$$SongModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String songName,
      String artistName,
      String songUrl,
      String imageUrl,
      bool isFavourite});
}

/// @nodoc
class __$$SongModelImplCopyWithImpl<$Res>
    extends _$SongModelCopyWithImpl<$Res, _$SongModelImpl>
    implements _$$SongModelImplCopyWith<$Res> {
  __$$SongModelImplCopyWithImpl(
      _$SongModelImpl _value, $Res Function(_$SongModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songName = null,
    Object? artistName = null,
    Object? songUrl = null,
    Object? imageUrl = null,
    Object? isFavourite = null,
  }) {
    return _then(_$SongModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      songName: null == songName
          ? _value.songName
          : songName // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SongModelImpl extends _SongModel {
  const _$SongModelImpl(
      {required this.id,
      required this.songName,
      required this.artistName,
      required this.songUrl,
      required this.imageUrl,
      required this.isFavourite})
      : super._();

  @override
  final String id;
  @override
  final String songName;
  @override
  final String artistName;
  @override
  final String songUrl;
  @override
  final String imageUrl;
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'SongModel(id: $id, songName: $songName, artistName: $artistName, songUrl: $songUrl, imageUrl: $imageUrl, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.songName, songName) ||
                other.songName == songName) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.songUrl, songUrl) || other.songUrl == songUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, songName, artistName, songUrl, imageUrl, isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongModelImplCopyWith<_$SongModelImpl> get copyWith =>
      __$$SongModelImplCopyWithImpl<_$SongModelImpl>(this, _$identity);
}

abstract class _SongModel extends SongModel {
  const factory _SongModel(
      {required final String id,
      required final String songName,
      required final String artistName,
      required final String songUrl,
      required final String imageUrl,
      required final bool isFavourite}) = _$SongModelImpl;
  const _SongModel._() : super._();

  @override
  String get id;
  @override
  String get songName;
  @override
  String get artistName;
  @override
  String get songUrl;
  @override
  String get imageUrl;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$SongModelImplCopyWith<_$SongModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
