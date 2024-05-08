import 'package:audiofy/features/home/data/models/hive_boxes/song_model_hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:audiofy/features/home/data/models/song_model.dart' as s;

class SongService {
  static final SongService _instance = SongService._internal();

  SongService._internal();

  factory SongService() => _instance;

  static const _songsBoxKey = 'songs';

  Box<SongModel>? _songsBox;

  Box<SongModel> get songsBox {
    if (_songsBox == null) {
      throw const UnopenedBoxException(_songsBoxKey);
    }
    return _songsBox!;
  }

  set songsBox(Box<SongModel> value) {
    _songsBox = value;
  }

  Future<void> initialize() async {
    songsBox = await Hive.openBox<SongModel>(_songsBoxKey);
  }

  Future<void> saveSongs(List<s.SongModel> songs) async {
    await songsBox
        .putAll(songs.map((e) => e.toHiveSongModel()).toList().asMap());
  }

  List<s.SongModel>? getSongs() {
    final allSongs = songsBox.values.toList();
    if (allSongs.isEmpty) {
      return null;
    }
    return allSongs.map((e) => e.toSongModel(e)).toList();
  }
}

class UnopenedBoxException implements Exception {
  final String boxName;

  const UnopenedBoxException(this.boxName);

  @override
  String toString() => '${boxName}Box has not been opened. Make sure you call '
      'await SongsService().initialize() before trying to '
      'access boxes from SongsService';
}
