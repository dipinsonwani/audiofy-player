import 'package:audiofy/features/home/domain/entities/song_entity.dart';

abstract class MusicRepository {
  Future<List<SongEntity>?> getAllSongs();

  Future<void> setAsFavourite(SongEntity song, bool value);
}
