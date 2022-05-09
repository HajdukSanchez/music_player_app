import 'package:flutter/material.dart';

import 'package:music_player_app/src/enums/enums.dart';
import 'package:music_player_app/src/routes/routes.dart';
import 'package:music_player_app/src/themes/themes.dart';
import 'package:music_player_app/src/helpers/helpers.dart';

void main() {
  setStatusBarTransparent();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music player app',
      theme: myTheme,
      routes: routes,
      initialRoute: Routes.home.name,
    );
  }
}
