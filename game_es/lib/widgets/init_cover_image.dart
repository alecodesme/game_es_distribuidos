import 'package:flutter/material.dart';

class InitCoverImage extends StatelessWidget {
  const InitCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/init_cover.png',
                ))));
  }
}
