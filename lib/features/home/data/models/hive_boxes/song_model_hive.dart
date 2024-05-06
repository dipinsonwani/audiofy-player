import 'package:hive_flutter/hive_flutter.dart';
import 'package:audiofy/features/home/data/models/song_model.dart' as s;
part 'song_model_hive.g.dart';

@HiveType(typeId: 2)
class SongModel extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? songName;
  @HiveField(2)
  String? artistName;
  @HiveField(3)
  String? songUrl;
  @HiveField(4)
  String? imageUrl;
  @HiveField(5)
  bool? isFavourite;

  s.SongModel toSongModel(SongModel model) {
    return s.SongModel(
        artistName: model.artistName ?? '',
        id: model.id ?? '',
        imageUrl: model.imageUrl ?? '',
        isFavourite: model.isFavourite ?? false,
        songName: model.songName ?? '',
        songUrl: model.songUrl ?? '');
  }
}
