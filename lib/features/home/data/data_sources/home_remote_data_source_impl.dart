import 'package:audiofy/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:audiofy/features/home/data/models/song_model.dart';
import 'package:audiofy/features/home/data/services/song_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final CollectionReference songsCollection;
  final CollectionReference favCollection;

  HomeRemoteDataSourceImpl(
      {required this.favCollection, required this.songsCollection});
  @override
  Future<List<SongModel>?> getAllSongs() async {
    try {
      final songSnapshot = await songsCollection.get();
      final favSnapshot = await favCollection.get();
      final favList = favSnapshot.docs.map((e) => e.id).toList();
      final songsList = songSnapshot.docs.map((e) {
        if (favList.contains(e.id)) {
          return SongModel.fromDocumentSnapshot(e, true);
        }
        return SongModel.fromDocumentSnapshot(e, false);
      }).toList();

      SongService().saveSongs(songsList);

      return songsList;
    } catch (e) {
      throw Exception('Failed fetching songs: $e');
    }
  }

  @override
  Future<void> setAsFavourite(SongModel song, bool value) async {
    try {
      if (value) {
        final docsref = favCollection.doc(song.id);
        await docsref.set({'is_favourite': true});
      } else {
        favCollection.doc(song.id).delete();
      }
    } catch (e) {
      throw Exception('Failed to add in favourites: $e');
    }
  }
}
