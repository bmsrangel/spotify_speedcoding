import 'package:flutter/material.dart';
import 'package:spotify_speedcoding/app_text_styles.dart';
import 'package:spotify_speedcoding/models/playlist_model.dart';
import 'package:spotify_speedcoding/screens/home/widgets/playlist_tile_widget.dart';

class RecentlyPlayedSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
          child: Text(
            'Tocadas recentemente',
            style: AppTextStyles.headerStyle,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 15.0),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, index) => PlaylistTileWidget(
              playlist: PlaylistModel(
                imageUrl: 'https://picsum.photos/100',
                title: 'Playlist 1',
                description: 'Playlist 1',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
