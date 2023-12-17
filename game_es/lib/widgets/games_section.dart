import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';
import 'package:game_es/exceptions/common/EmptyListException.dart';
import 'package:game_es/exceptions/common/ServerException.dart';
import 'package:game_es/providers/game_provider.dart';
import 'package:game_es/shared/animations/fade_from_right.dart';
import 'package:game_es/widgets/game_list_view.dart';
import 'package:game_es/widgets/home_tile.dart';
import 'package:provider/provider.dart';

class GamesBoard extends StatelessWidget {
  const GamesBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<GameProvider>(context);

    if (dataProvider.isLoading) {
      return Container(
        height: 270,
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          color: AppColors.secondaryColor,
        ),
      );
    } else {
      try {
        if (dataProvider.games!.isEmpty) {
          throw EmptyListException("No games found");
        }
        return Container(
          child: Column(
            children: [
              HomeTile(
                title: 'Nuevo en Game!',
                subTitle: 'Juegos recien llegados a tienda, llevate el tuyo.',
              ),
              FadeFromRight(
                  child: GameListView(
                      games: dataProvider.games!
                          .where((element) =>
                              !element.isSoonToWayOut() &&
                              !element.hasDiscount())
                          .toList())),
              HomeTile(
                title: 'Casi Agotados!',
                subTitle: 'No esperes al ultimo para llevartelo.',
              ),
              FadeFromRight(
                  child: GameListView(
                      games: dataProvider.games!
                          .where((element) =>
                              element.isSoonToWayOut() && element.discount == 0)
                          .toList())),
              HomeTile(
                title: 'En Oferta',
                subTitle: 'Aprovecha las ofertas que puedes encontrar aqui.',
              ),
              FadeFromRight(
                  child: GameListView(
                      games: dataProvider.games!
                          .where((element) => element.hasDiscount())
                          .toList())),
            ],
          ),
        );
      } on EmptyListException catch (e) {
        return Container(
            height: 270,
            alignment: Alignment.center,
            child: Text("Error: ${e.message}"));
      } on ServerErrorException catch (e) {
        return Container(
            height: 270,
            alignment: Alignment.center,
            child: Text("Error: ${e.message}"));
      } catch (e) {
        return Container(
            height: 270, alignment: Alignment.center, child: Text("Error: $e"));
      }
    }
  }
}
