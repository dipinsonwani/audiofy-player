import 'package:audiofy/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:audiofy/features/home/presentation/blocs/home_cubit.dart';
import 'package:audiofy/features/home/presentation/blocs/home_state.dart';
import 'package:audiofy/features/home/presentation/widgets/song_grid_item.dart';
import 'package:audiofy/features/theme/presentation/widgets/toggle_theme_button.dart';
import 'package:auto_route/auto_route.dart';
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
          const ToggleThemeButton(),
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
            builder: (context, state) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (state is SongsFetchedState) ...[
                          Container(
                            height: 45,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: SearchBar(
                              elevation: MaterialStateProperty.all(4),
                              hintText: 'Search',
                              onChanged: (value) =>
                                  context.read<HomeCubit>().querySongs(value),
                            ),
                          ),
                          SizedBox(
                            height: 600,
                            child: GridView.builder(
                                itemCount: state.songs.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 3 / 4,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10),
                                itemBuilder: (context, i) {
                                  bool isFav = state.songs[i].isFavourite;
                                  return Hero(
                                    tag: state.songs[i].id,
                                    child: SongGridItem(
                                      song: state.songs[i],
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
                                              : const Icon(Icons
                                                  .favorite_outline_outlined)),
                                    ),
                                  );
                                }),
                          )
                        ] else if (state is ErrorHomeState) ...[
                          const Text('Error Fetching')
                        ] else
                          const LinearProgressIndicator(),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
