import 'package:flutter/material.dart';

class CurrentSongInformation extends StatelessWidget {
  const CurrentSongInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [_SongImage()],
    );
  }
}

class _SongImage extends StatelessWidget {
  const _SongImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const Image(image: AssetImage("assets/images/aurora.jpg")),
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
