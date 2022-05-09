import 'package:flutter/material.dart';

import 'package:music_player_app/src/widgets/widgets.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        CustomAppBar(),
      ],
    ));
  }
}
