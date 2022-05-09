import 'package:flutter/material.dart';

import 'package:music_player_app/src/enums/enums.dart';
import 'package:music_player_app/src/pages/pages.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  Routes.home.name: (context) => const MusicPlayerPage(),
};
