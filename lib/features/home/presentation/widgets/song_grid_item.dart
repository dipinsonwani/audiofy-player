import 'package:audiofy/features/home/domain/entities/song_entity.dart';
import 'package:audiofy/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SongGridItem extends StatelessWidget {
  final SongEntity song;
  final Widget trailing;
  const SongGridItem({super.key, required this.song, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(DetailsRoute(song: song));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 100,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: FadeInImage(
                    placeholder:
                        const AssetImage('assets/music-placeholder.png'),
                    image: NetworkImage(
                      song.imageUrl,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        song.songName,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    trailing,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
