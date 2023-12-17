import 'package:flutter/material.dart';

class InitBlurCoverImage extends StatelessWidget {
  const InitBlurCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/blur_cover.png',
                ))));
  }
}
