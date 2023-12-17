import 'package:flutter/material.dart';

class GameEsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Image(
          height: 50,
          width: 50,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/game_es_logo.png')),
    );
  }
}
