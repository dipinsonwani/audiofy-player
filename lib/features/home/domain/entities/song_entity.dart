// ignore_for_file: depend_on_referenced_packages

import 'package:audiofy/features/home/data/models/song_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_entity.freezed.dart';
part 'song_entity.g.dart';

@freezed
class SongEntity with _$SongEntity {
  const SongEntity._();

  const factory SongEntity({
    required String id,
    required String songName,
    required String artistName,
    required bool isFavourite,
    required String imageUrl,
    required String songUrl,
  }) = _SongEntity;

  factory SongEntity.fromJson(Map<String, dynamic> json) =>
      _$SongEntityFromJson(json);

  SongModel toModel() => SongModel(
      id: id,
      songName: songName,
      artistName: artistName,
      isFavourite: isFavourite,
      imageUrl: imageUrl,
      songUrl: songUrl);
}
