// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongEntityImpl _$$SongEntityImplFromJson(Map<String, dynamic> json) =>
    _$SongEntityImpl(
      id: json['id'] as String,
      songName: json['songName'] as String,
      artistName: json['artistName'] as String,
      isFavourite: json['isFavourite'] as bool,
      imageUrl: json['imageUrl'] as String,
      songUrl: json['songUrl'] as String,
    );

Map<String, dynamic> _$$SongEntityImplToJson(_$SongEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'songName': instance.songName,
      'artistName': instance.artistName,
      'isFavourite': instance.isFavourite,
      'imageUrl': instance.imageUrl,
      'songUrl': instance.songUrl,
    };
