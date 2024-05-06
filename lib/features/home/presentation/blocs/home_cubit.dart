import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/features/home/domain/usecases/get_all_songs_usecase.dart';
import 'package:audiofy/features/home/domain/usecases/set_as_favourite_usecase.dart';
import 'package:audiofy/features/home/presentation/blocs/home_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetAllSongsUsecase getAllSongsUsecase;
  final SetAsFavouriteUsecase setAsFavouriteUsecase;
  HomeCubit(this.getAllSongsUsecase, this.setAsFavouriteUsecase)
      : super(const HomeState.loading());

  Future<void> fetchSongs() async {
    try {
      final songsList = await getAllSongsUsecase.call();
      emit(HomeState.songsFetched(songsList!));
    } catch (e) {
      emit(const HomeState.error());
    }
  }

  Future<void> setSongAsFavourite(SongEntity song, bool value) async {
    try {
      await setAsFavouriteUsecase.call(song, value);
    } catch (e) {
      emit(const HomeState.error());
    } finally {
      fetchSongs();
    }
  }
}
