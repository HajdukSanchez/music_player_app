import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

import 'package:music_player_app/src/models/models.dart';

class CurrentSongInformation extends StatelessWidget {
  const CurrentSongInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, right: 30),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [_SongImage(), _SongProgressBar()],
      ),
    );
  }
}

class _SongProgressBar extends StatelessWidget {
  const _SongProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '0:0',
          style: TextStyle(color: Colors.white.withOpacity(0.4)),
        ),
        const SizedBox(height: 10),
        Stack(children: [
          Container(
            width: 3,
            height: 230,
            color: Colors.white.withOpacity(0.1),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 3,
              height: 180,
              color: Colors.white.withOpacity(0.8),
            ),
          )
        ]),
        const SizedBox(height: 10),
        Text(
          '0:0',
          style: TextStyle(color: Colors.white.withOpacity(0.4)),
        )
      ],
    );
  }
}

class _SongImage extends StatelessWidget {
  const _SongImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final audioPlayerModelProvider = Provider.of<AudioPlayerModel>(context);

    return Container(
      padding: const EdgeInsets.all(15),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft, colors: [Color(0xff484750), Color(0xff1C1E24)]),
          borderRadius: BorderRadius.circular(200)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SpinPerfect(
                infinite: true,
                animate: false,
                manualTrigger: true,
                controller: (animationController) =>
                    audioPlayerModelProvider.controller = animationController,
                duration: const Duration(seconds: 10),
                child: const Image(image: AssetImage("assets/images/aurora.jpg"))),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: const Color(0xff1C1E24),
                borderRadius: BorderRadius.circular(100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
