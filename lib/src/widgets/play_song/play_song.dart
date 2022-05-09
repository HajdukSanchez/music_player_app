import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:music_player_app/src/models/models.dart';

class PlaySong extends StatefulWidget {
  const PlaySong({Key? key}) : super(key: key);

  @override
  State<PlaySong> createState() => _PlaySongState();
}

class _PlaySongState extends State<PlaySong> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final audioPlayerModelProvider = Provider.of<AudioPlayerModel>(context);

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
            child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _controller),
            elevation: 0,
            highlightElevation: 0,
            onPressed: () => onPressButton(audioPlayerModelProvider),
          )
        ],
      ),
    );
  }

  void onPressButton(AudioPlayerModel audioPlayerModelProvider) {
    _isPlaying = !_isPlaying; // toggle the value of _isPlaying
    if (_isPlaying) {
      _controller.reverse(); // reverse the animation
      audioPlayerModelProvider.controller.stop();
    } else {
      _controller.forward(); // Start the animation
      audioPlayerModelProvider.controller.repeat();
    }
  }
}
