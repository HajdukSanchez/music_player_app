import 'package:flutter/material.dart';

import 'package:music_player_app/src/helpers/helpers.dart';

class LyricsList extends StatelessWidget {
  const LyricsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();

    return Expanded(
        child: ListWheelScrollView(
      physics: const BouncingScrollPhysics(),
      itemExtent: 42, // size of each child
      diameterRatio: 1.5,
      children: lyrics
          .map((lyric) => Text(
                lyric,
                style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.6)),
              ))
          .toList(),
    ));
  }
}
