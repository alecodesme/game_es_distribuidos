import 'package:flutter/material.dart';
import 'package:game_es/screens/app/init.dart';
import 'package:game_es/screens/games/game_detail.dart';
import 'package:game_es/screens/games/search.dart';
import 'package:game_es/screens/home/home.dart';

class AppRoutes {
  static const String init = '/';
  static const String home = '/home';
  static const String search = '/search';
  static const String gameDetail = '/game/detail';

  static Map<String, WidgetBuilder> routes = {
    init: (BuildContext context) => const InitPage(),
    home: (BuildContext context) => HomeScreen(),
    search: (BuildContext context) => SearchGameList(),
    gameDetail: (BuildContext context) => GameDetail(),
  };
}
