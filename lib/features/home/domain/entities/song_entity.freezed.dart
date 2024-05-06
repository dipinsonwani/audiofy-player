// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongEntity _$SongEntityFromJson(Map<String, dynamic> json) {
  return _SongEntity.fromJson(json);
}

/// @nodoc
mixin _$SongEntity {
  String get id => throw _privateConstructorUsedError;
  String get songName => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get songUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongEntityCopyWith<SongEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongEntityCopyWith<$Res> {
  factory $SongEntityCopyWith(
          SongEntity value, $Res Function(SongEntity) then) =
      _$SongEntityCopyWithImpl<$Res, SongEntity>;
  @useResult
  $Res call(
      {String id,
      String songName,
      String artistName,
      bool isFavourite,
      String imageUrl,
      String songUrl});
}

/// @nodoc
class _$SongEntityCopyWithImpl<$Res, $Val extends SongEntity>
    implements $SongEntityCopyWith<$Res> {
  _$SongEntityCopyWithImpl(this._value, this._then);

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
    Object? isFavourite = null,
    Object? imageUrl = null,
    Object? songUrl = null,
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
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongEntityImplCopyWith<$Res>
    implements $SongEntityCopyWith<$Res> {
  factory _$$SongEntityImplCopyWith(
          _$SongEntityImpl value, $Res Function(_$SongEntityImpl) then) =
      __$$SongEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String songName,
      String artistName,
      bool isFavourite,
      String imageUrl,
      String songUrl});
}

/// @nodoc
class __$$SongEntityImplCopyWithImpl<$Res>
    extends _$SongEntityCopyWithImpl<$Res, _$SongEntityImpl>
    implements _$$SongEntityImplCopyWith<$Res> {
  __$$SongEntityImplCopyWithImpl(
      _$SongEntityImpl _value, $Res Function(_$SongEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? songName = null,
    Object? artistName = null,
    Object? isFavourite = null,
    Object? imageUrl = null,
    Object? songUrl = null,
  }) {
    return _then(_$SongEntityImpl(
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
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongEntityImpl extends _SongEntity {
  const _$SongEntityImpl(
      {required this.id,
      required this.songName,
      required this.artistName,
      required this.isFavourite,
      required this.imageUrl,
      required this.songUrl})
      : super._();

  factory _$SongEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String songName;
  @override
  final String artistName;
  @override
  final bool isFavourite;
  @override
  final String imageUrl;
  @override
  final String songUrl;

  @override
  String toString() {
    return 'SongEntity(id: $id, songName: $songName, artistName: $artistName, isFavourite: $isFavourite, imageUrl: $imageUrl, songUrl: $songUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.songName, songName) ||
                other.songName == songName) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.songUrl, songUrl) || other.songUrl == songUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, songName, artistName, isFavourite, imageUrl, songUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongEntityImplCopyWith<_$SongEntityImpl> get copyWith =>
      __$$SongEntityImplCopyWithImpl<_$SongEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongEntityImplToJson(
      this,
    );
  }
}

abstract class _SongEntity extends SongEntity {
  const factory _SongEntity(
      {required final String id,
      required final String songName,
      required final String artistName,
      required final bool isFavourite,
      required final String imageUrl,
      required final String songUrl}) = _$SongEntityImpl;
  const _SongEntity._() : super._();

  factory _SongEntity.fromJson(Map<String, dynamic> json) =
      _$SongEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get songName;
  @override
  String get artistName;
  @override
  bool get isFavourite;
  @override
  String get imageUrl;
  @override
  String get songUrl;
  @override
  @JsonKey(ignore: true)
  _$$SongEntityImplCopyWith<_$SongEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
