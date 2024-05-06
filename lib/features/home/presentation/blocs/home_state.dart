// ignore_for_file: depend_on_referenced_packages

import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingHomeState;
  const factory HomeState.songsFetched(List<SongEntity> songs) =
      SongsFetchedState;
  const factory HomeState.error() = ErrorHomeState;
}
