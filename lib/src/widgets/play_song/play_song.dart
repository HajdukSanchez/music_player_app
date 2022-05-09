import 'package:flutter/material.dart';

class PlaySong extends StatelessWidget {
  const PlaySong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Far away",
                style: TextStyle(fontSize: 30, color: Colors.white.withOpacity(0.8)),
              ),
              Text(
                "Breaking Benjamin",
                style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.5)),
              )
            ],
          ),
          FloatingActionButton(
            backgroundColor: const Color(0xffF8CB51),
            child: const Icon(Icons.play_arrow_rounded),
            elevation: 0,
            highlightElevation: 0,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
