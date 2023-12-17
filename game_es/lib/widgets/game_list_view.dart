import 'package:flutter/material.dart';
import 'package:game_es/models/Game.dart';
import 'package:game_es/providers/game_provider.dart';
import 'package:game_es/widgets/game/card.dart';
import 'package:provider/provider.dart';

class GameListView extends StatefulWidget {
  List<Game> games;
  GameListView({super.key, required this.games});
  @override
  State<GameListView> createState() => _GameListViewState();
}

class _GameListViewState extends State<GameListView> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<GameProvider>(context);
    if (widget.games.isEmpty) {
      return Text('No Games');
    } else {
      return Container(
        height: 270,
        child: ListView(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
          scrollDirection: Axis.horizontal,
          children: widget.games
              .map((Game game) => Container(
                  height: 42,
                  width: 250,
                  margin: EdgeInsets.only(right: 20),
                  child: GameCard(game: game)))
              .toList(),
        ),
      );
    }
  }
}
