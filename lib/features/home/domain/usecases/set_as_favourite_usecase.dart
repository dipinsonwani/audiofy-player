import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/features/home/domain/repositories/music_repository.dart';

class SetAsFavouriteUsecase {
  final MusicRepository repository;
  SetAsFavouriteUsecase({required this.repository});

  Future<void> call(SongEntity song, bool value) async {
    try {
      await repository.setAsFavourite(song, value);
    } catch (e) {
      throw Exception('Failed to add in favourites: $e');
    }
  }
}
