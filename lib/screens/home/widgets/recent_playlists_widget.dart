import 'package:flutter/material.dart';
import 'package:spotify_speedcoding/models/playlist_model.dart';

import 'small_card_widget.dart';

class RecentPlaylistsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: (screenWidth / 2) / (constraints.maxHeight / 3),
          children: List<Widget>.generate(
            6,
            (index) => SmallCardWidget(
              playlist: PlaylistModel(
                  imageUrl: 'https://picsum.photos/100',
                  title: 'Playlist ${index + 1}',
                  description: 'Playlist ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
