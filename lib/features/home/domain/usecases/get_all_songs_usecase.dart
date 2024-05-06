import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/features/home/domain/repositories/music_repository.dart';

class GetAllSongsUsecase {
  final MusicRepository repository;
  GetAllSongsUsecase({required this.repository});

  Future<List<SongEntity>?> call() async {
    try {
      return await repository.getAllSongs();
    } catch (e) {
      throw Exception('Fetching Failed : $e');
    }
  }
}
