// ignore_for_file: depend_on_referenced_packages

import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:audiofy/features/home/data/models/hive_boxes/song_model_hive.dart'
    as hive;

part 'song_model.freezed.dart';

@freezed
class SongModel with _$SongModel {
  const SongModel._();
  const factory SongModel(
      {required String id,
      required String songName,
      required String artistName,
      required String songUrl,
      required String imageUrl,
      required bool isFavourite}) = _SongModel;
  factory SongModel.fromDocumentSnapshot(
          DocumentSnapshot snapshot, bool isFav) =>
      SongModel(
          id: snapshot.id,
          songName: snapshot.get('song_name'),
          artistName: snapshot.get('artist_name'),
          isFavourite: isFav,
          imageUrl: snapshot.get('image_url'),
          songUrl: snapshot.get('url'));
  SongEntity toEntity() => SongEntity(
        id: id,
        songName: songName,
        artistName: artistName,
        isFavourite: isFavourite,
        songUrl: songUrl,
        imageUrl: imageUrl,
      );
  hive.SongModel toHiveSongModel() => hive.SongModel()
    ..artistName = artistName
    ..id = id
    ..imageUrl = imageUrl
    ..isFavourite = isFavourite
    ..songName = songName
    ..songUrl = songUrl;
}
