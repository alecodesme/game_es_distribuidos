import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';

enum GameState { normal, discount, outOfStock }

class GameTag extends StatelessWidget {
  final GameState gameState;
  const GameTag({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return Positioned(top: 10, right: 10, child: renderTag(gameState));
  }

  Widget renderTag(GameState state) {
    switch (state) {
      case GameState.normal:
        return normalTag();
      case GameState.discount:
        return discountTag();
      case GameState.outOfStock:
        return outOfStockTag();
      default:
        return Container();
    }
  }

  Widget outOfStockTag() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
            color: AppColors.dangerColor,
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          'Quedan 4',
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
        ));
  }

  Widget discountTag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(5)),
      child: const Row(
        children: [
          Text(
            '50',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Image(
              height: 15,
              width: 15,
              image: AssetImage('assets/icons/discount_icon.png'))
        ],
      ),
    );
  }

  Widget normalTag() {
    return Container();
  }
}
