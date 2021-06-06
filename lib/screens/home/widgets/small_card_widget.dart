import 'package:flutter/material.dart';

import 'package:spotify_speedcoding/models/playlist_model.dart';

class SmallCardWidget extends StatelessWidget {
  const SmallCardWidget({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final PlaylistModel playlist;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        clipBehavior: Clip.antiAlias,
        color: Color(0xFF303231),
        child: Container(
          height: constraints.maxHeight,
          child: Row(
            children: [
              Image.network(
                playlist.imageUrl,
                height: constraints.maxHeight,
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  playlist.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
