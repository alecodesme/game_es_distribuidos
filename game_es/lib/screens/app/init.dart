import 'package:flutter/material.dart';
import 'package:game_es/widgets/auth_slider_pageview.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthSliderPageView(),
    );
  }
}
