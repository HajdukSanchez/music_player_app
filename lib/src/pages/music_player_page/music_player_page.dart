import 'package:flutter/material.dart';

import 'package:music_player_app/src/widgets/widgets.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const _MusicPlayerBackground(),
        Column(
          children: const [CustomAppBar(), CurrentSongInformation(), PlaySong(), LyricsList()],
        ),
      ],
    ));
  }
}

class _MusicPlayerBackground extends StatelessWidget {
  const _MusicPlayerBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: screenSize.height * 0.75, // 75% of the screen height
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
          gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.center, colors: [
            Color(0xff33333E),
            Color(0xff201E28),
          ])),
    );
  }
}
