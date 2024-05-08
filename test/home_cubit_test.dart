// ignore_for_file: depend_on_referenced_packages

import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/features/home/domain/usecases/set_as_favourite_usecase.dart';
import 'package:audiofy/features/home/presentation/blocs/home_cubit.dart';
import 'package:audiofy/features/home/presentation/blocs/home_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:audiofy/features/home/domain/usecases/get_all_songs_usecase.dart';

class MockGetAllSongsUsecase extends Mock implements GetAllSongsUsecase {}

class MockSetAsFavouriteUsecase extends Mock implements SetAsFavouriteUsecase {}

void main() {
  late GetAllSongsUsecase getAllSongsUsecase;
  late SetAsFavouriteUsecase setAsFavouriteUsecase;
  late HomeCubit homeCubit;

  setUpAll(() {
    getAllSongsUsecase = MockGetAllSongsUsecase();
    setAsFavouriteUsecase = MockSetAsFavouriteUsecase();
    homeCubit = HomeCubit(getAllSongsUsecase, setAsFavouriteUsecase);
  });

  const song = SongEntity(
      id: 'id',
      songName: 'songName',
      artistName: 'artistName',
      isFavourite: false,
      imageUrl: 'imageUrl',
      songUrl: 'songUrl');
  blocTest(
    '[SongsFetchedState] is emitted when songs are fetched successfully',
    build: () => homeCubit,
    setUp: () => when(() => getAllSongsUsecase.call())
        .thenAnswer((invocation) async => [song]),
    act: (bloc) => bloc.fetchSongs(),
    expect: () => [
      const HomeState.songsFetched([song])
    ],
  );

  blocTest('[ErrorHomeState] is emitted when songs are failed to fetch',
      build: () => homeCubit,
      setUp: () => when(() => getAllSongsUsecase.call())
          .thenThrow(Exception('fail to fetch')),
      act: (bloc) => bloc.fetchSongs(),
      expect: () => [const HomeState.error()]);
}
