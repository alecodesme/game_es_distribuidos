import 'package:flutter/material.dart';
import 'package:game_es/providers/game_provider.dart';
import 'package:game_es/routes/routes.dart';
import 'package:game_es/widgets/game_es_logo.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gamesProvider = Provider.of<GameProvider>(context);
    return Container(
      padding: EdgeInsets.only(top: 50, left: 10, right: 20, bottom: 10),
      color: Colors.white,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GameEsLogo(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.search);
                },
                child: Icon(Icons.search),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  gamesProvider.fetchGames();
                },
                child: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
