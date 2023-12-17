import 'package:flutter/material.dart';
import 'package:game_es/models/Game.dart';
import 'package:game_es/widgets/game/consoles_available.dart';
import 'package:game_es/widgets/game/game_tag.dart';

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3)),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://d.newsweek.com/en/full/1104662/geek-01.webp',
                      ),
                    ),
                  ),
                ),
                GameTag(gameState: state())
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${game.name}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                AvailableConsoles(),
                const SizedBox(height: 8),
                const Text(
                  '6.99',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text(
                  '500 puntos',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GameState state() {
    if (game.hasDiscount()) {
      return GameState.discount;
    } else if (game.isSoonToWayOut()) {
      return GameState.outOfStock;
    } else {
      return GameState.normal;
    }
  }
}
