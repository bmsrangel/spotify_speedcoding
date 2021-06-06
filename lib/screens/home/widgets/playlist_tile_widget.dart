import 'package:flutter/material.dart';
import 'package:spotify_speedcoding/app_text_styles.dart';
import 'package:spotify_speedcoding/models/playlist_model.dart';

class PlaylistTileWidget extends StatelessWidget {
  const PlaylistTileWidget({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final PlaylistModel playlist;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: constraints.maxHeight * 0.8,
              width: constraints.maxHeight * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(playlist.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              playlist.title,
              style: AppTextStyles.playlistCardTitleStyle,
            ),
            Text(
              'Playlist',
              style: AppTextStyles.playlistCardBodyStyle,
            ),
          ],
        ),
      ),
    );
  }
}
