import 'package:flutter/material.dart';

class AudioPlayerModel extends ChangeNotifier {
  bool _isPlaying = false;
  late AnimationController controller;

  bool get isPlaying => _isPlaying;

  set isPlaying(bool value) {
    _isPlaying = value;
    notifyListeners();
  }
}
