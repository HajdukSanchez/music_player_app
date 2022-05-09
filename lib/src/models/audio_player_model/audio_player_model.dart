import 'package:flutter/material.dart';

class AudioPlayerModel extends ChangeNotifier {
  late AnimationController controller;
  bool _isPlaying = false;
  Duration _songDuration = const Duration(seconds: 0); // Song duration
  Duration _currentSecond = const Duration(seconds: 0); // Current secind in song

  bool get isPlaying => _isPlaying;
  Duration get songDuration => _songDuration;
  Duration get currentSecond => _currentSecond;

  String get songTotalDuration => _printDuration(_songDuration); // Total duration of song
  String get songCurrentSecond => _printDuration(_currentSecond); // Current second in song

  // Song percentage played fpr the progerss bar
  double get songPercentage =>
      (_songDuration.inSeconds > 0) ? _currentSecond.inSeconds / _songDuration.inSeconds : 0;

  set isPlaying(bool value) {
    _isPlaying = value;
    notifyListeners();
  }

  set songDuration(Duration value) {
    _songDuration = value;
    notifyListeners();
  }

  set currentSecond(Duration value) {
    _currentSecond = value;
    notifyListeners();
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
