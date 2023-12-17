import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';
import 'package:game_es/providers/game_provider.dart';
import 'package:game_es/widgets/game/card.dart';
import 'package:provider/provider.dart';

class SearchGameList extends StatelessWidget {
  const SearchGameList({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<GameProvider>(context);
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                SizedBox(width: 8),
                Text(
                  'Busca un juego',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(fontSize: 15, color: Colors.white),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  iconColor: Colors.white,
                  prefixIconColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 0.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.white.withOpacity(0.3),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  filled: true),
            ),
            SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.only(bottom: 30),
              itemCount: dataProvider.games!.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 250,
                    margin: EdgeInsets.only(top: 20),
                    child: GameCard(game: dataProvider.games![index]));
              },
            ))
          ],
        ),
      ),
    );
  }
}
