import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';
import 'package:game_es/providers/game_provider.dart';
import 'package:game_es/shared/animations/fade_from_right.dart';
import 'package:game_es/shared/animations/fade_from_top.dart';
import 'package:game_es/widgets/app_bar_widget.dart';
import 'package:game_es/widgets/carousel.dart';
import 'package:game_es/widgets/game_list_view.dart';
import 'package:game_es/widgets/games_section.dart';
import 'package:game_es/widgets/home_tile.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<GameProvider>(context, listen: false).fetchGames();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<GameProvider>(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
          child: Column(
        children: [
          AppBarWidget(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                FadeFromTop(child: Carousel()),
                SizedBox(height: 20),
                GamesBoard()
              ],
            ),
          ))
        ],
      )),
    );
  }
}
