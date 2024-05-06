import 'package:audiofy/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:audiofy/features/home/data/models/song_model.dart';
import 'package:audiofy/features/home/data/services/song_service.dart';

class LocalDataSource implements HomeRemoteDataSource {
  final SongService songService;

  LocalDataSource({required this.songService});
  @override
  Future<List<SongModel>?> getAllSongs() async {
    final list = songService.getSongs();
    if (list == null) {
      return [];
    }
    return list.map((e) => e).toList();
  }

  @override
  Future<void> setAsFavourite(SongModel song, bool value) async {
    final list = songService.getSongs();
    final index = list!.indexWhere((element) => element.id == song.id);
    await songService.songsBox
        .put(index, song.copyWith(isFavourite: value).toHiveSongModel());
  }
}
