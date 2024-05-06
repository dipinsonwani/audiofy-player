import 'package:audiofy/features/home/data/models/song_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<SongModel>?> getAllSongs();

  Future<void> setAsFavourite(SongModel song, bool value);
}
