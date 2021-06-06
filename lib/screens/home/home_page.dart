import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';
import 'widgets/new_custom_playlist_section_widget.dart';
import 'widgets/recent_playlists_widget.dart';
import 'widgets/recently_played_section_widget.dart';
import 'widgets/your_playlists_section_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFF405554),
              Color(0xFF121212),
            ],
            center: Alignment.topLeft,
            radius: 0.8,
          ),
        ),
        child: ListView(
          children: [
            HeaderWidget(),
            Container(
              child: RecentPlaylistsWidget(),
              height: screenSize.height * 0.3,
            ),
            NewCustomPlaylistSectionWidget(),
            Container(
              child: YourPlaylistsSectionWidget(),
              height: screenSize.height * 0.35,
            ),
            Container(
              child: RecentlyPlayedSectionWidget(),
              height: screenSize.height * 0.3,
            ),
          ],
        ),
      ),
    );
  }
}
