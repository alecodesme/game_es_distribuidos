import 'package:flutter/material.dart';

class AvailableConsoles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Image(
            height: 18,
            width: 18,
            image: AssetImage('assets/icons/platforms/playstation.png')),
        SizedBox(width: 10),
        Image(
            height: 18,
            width: 18,
            image: AssetImage('assets/icons/platforms/xbox.png')),
        SizedBox(width: 10),
        Image(
            height: 18,
            width: 18,
            image: AssetImage('assets/icons/platforms/pc.png')),
        SizedBox(width: 10),
        Image(
            height: 18,
            width: 18,
            image: AssetImage('assets/icons/platforms/nintendo.png')),
      ],
    );
  }
}
