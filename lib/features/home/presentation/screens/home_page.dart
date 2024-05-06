import 'package:audiofy/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:audiofy/features/home/presentation/blocs/home_cubit.dart';
import 'package:audiofy/features/home/presentation/blocs/home_state.dart';
import 'package:audiofy/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audiofy'),
        actions: [
          IconButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SizedBox(
        height: 800,
        child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (state is SongsFetchedState) ...[
                      SearchBar(
                        hintText: 'Search',
                        onChanged: (value) =>
                            context.read<HomeCubit>().querySongs(value),
                      ),
                      SizedBox(
                        height: 600,
                        child: ListView.builder(
                            itemCount: state.songs.length,
                            itemBuilder: (context, i) {
                              bool isFav = state.songs[i].isFavourite;
                              return ListTile(
                                title: Text(state.songs[i].songName),
                                onTap: () {
                                  context.router
                                      .push(DetailsRoute(song: state.songs[i]));
                                },
                                trailing: IconButton(
                                    onPressed: () {
                                      context
                                          .read<HomeCubit>()
                                          .setSongAsFavourite(
                                              state.songs[i], !isFav);
                                    },
                                    icon: state.songs[i].isFavourite
                                        ? const Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                        : const Icon(
                                            Icons.favorite_outline_outlined)),
                              );
                            }),
                      )
                    ] else if (state is ErrorHomeState) ...[
                      const Text('Error Fetching')
                    ] else
                      const LinearProgressIndicator(),
                  ],
                )),
      ),
    );
  }
}
