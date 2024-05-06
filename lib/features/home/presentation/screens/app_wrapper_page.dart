import 'package:audiofy/features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:audiofy/features/home/data/data_sources/local_data_source_impl.dart';
import 'package:audiofy/features/home/data/respositories/music_repository_impl.dart';
import 'package:audiofy/features/home/data/services/network_info.dart';
import 'package:audiofy/features/home/data/services/song_service.dart';
import 'package:audiofy/features/home/domain/repositories/music_repository.dart';
import 'package:audiofy/features/home/domain/usecases/get_all_songs_usecase.dart';
import 'package:audiofy/features/home/domain/usecases/set_as_favourite_usecase.dart';
import 'package:audiofy/features/home/presentation/blocs/home_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AppWrapperPage extends StatelessWidget {
  const AppWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseFirestore.instance;
    final CollectionReference songsCollection = firebase.collection('songs');
    final user = FirebaseAuth.instance.currentUser;
    final CollectionReference favCollection =
        firebase.collection('users').doc(user!.uid).collection('favourites');
    final LocalDataSource localDataSource =
        LocalDataSource(songService: SongService());
    final NetworkInfo networkInfo = NetworkInfoImpl();
    final MusicRepository repository = MusicRepositoryImpl(
      network: networkInfo,
      localDataSource: localDataSource,
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
          songsCollection: songsCollection, favCollection: favCollection),
    );
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(
          GetAllSongsUsecase(repository: repository),
          SetAsFavouriteUsecase(
            repository: repository,
          ))
        ..fetchSongs(),
      child: const AutoRouter(),
    );
  }
}
