import 'package:audiofy/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:audiofy/features/home/data/data_sources/local_data_source_impl.dart';
import 'package:audiofy/features/home/data/services/network_info.dart';
import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/features/home/domain/repositories/music_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class MusicRepositoryImpl implements MusicRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final LocalDataSource localDataSource;
  final NetworkInfo network;
  MusicRepositoryImpl(
      {required this.network,
      required this.localDataSource,
      required this.homeRemoteDataSource});
  @override
  Future<List<SongEntity>> getAllSongs() async {
    try {
      final connected = await network.hasInternet();

      final list = connected
          ? await homeRemoteDataSource.getAllSongs()
          : await localDataSource.getAllSongs();
      if (list == null) {
        //TODO: Handle This case
        return [];
      }
      return list.map((e) => e.toEntity()).toList();
    } catch (e) {
      throw Exception('Fetching Failed $e');
    }
  }

  @override
  Future<void> setAsFavourite(SongEntity song, bool value) async {
    final connected = await network.hasInternet();
    if (!connected) {
      await localDataSource.setAsFavourite(song.toModel(), value);
    } else {
      try {
        await homeRemoteDataSource.setAsFavourite(song.toModel(), value);
        await localDataSource.setAsFavourite(song.toModel(), value);
      } catch (e) {
        throw Exception('Failed to add favourites $e');
      }
    }
    network.connectionChanged().listen((event) async {
      if (event == InternetConnectionStatus.connected) {
        await homeRemoteDataSource.setAsFavourite(song.toModel(), value);
      }
    });
  }
}
