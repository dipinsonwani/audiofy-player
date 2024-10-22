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
  late bool isFav;
  @override
  void initState() {
    isFav = widget.song.isFavourite;
    final fileUrl = DeviceFileSource(widget.song.songUrl);
    player.play(fileUrl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Details Page'),
      ),
      body: Center(
          child: Hero(
        tag: widget.song.id,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(widget.song.imageUrl)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          widget.song.songName,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isFav = !isFav;
                        });
                        context.read<HomeCubit>().setSongAsFavourite(
                            widget.song, !widget.song.isFavourite);
                      },
                      icon: isFav
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_outline_outlined)),
                ],
              ),
              Text(widget.song.artistName),
              PlayerWidget(
                player: player,
                song: widget.song,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
