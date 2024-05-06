import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/features/home/presentation/blocs/home_cubit.dart';
import 'package:audiofy/features/home/presentation/widgets/player_widget.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DetailsPage extends StatefulWidget {
  final SongEntity song;
  const DetailsPage({super.key, required this.song});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Details Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Image.network(widget.song.imageUrl),
          PlayerWidget(
            player: player,
          ),
          ElevatedButton(
              onPressed: () async {
                final fileUrl = DeviceFileSource(widget.song.songUrl);
                await player.play(fileUrl);
              },
              child: const Text('Play')),
          IconButton(
              onPressed: () {
                context
                    .read<HomeCubit>()
                    .setSongAsFavourite(widget.song, !widget.song.isFavourite);
              },
              icon: widget.song.isFavourite
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_outline_outlined))
        ],
      )),
    );
  }
}
