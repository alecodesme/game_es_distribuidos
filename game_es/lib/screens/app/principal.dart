import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';
import 'package:game_es/providers/auth_slider_page_provider.dart';
import 'package:game_es/shared/animations/fade_from_left.dart';
import 'package:game_es/shared/animations/fade_from_right.dart';
import 'package:game_es/widgets/init_cover_image.dart';
import 'package:provider/provider.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    final authSliderPageProvider = Provider.of<AuthSliderPageProvider>(context);
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Positioned(
              top: 0, left: 0, right: 0, bottom: 0, child: InitCoverImage()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, left: 30, bottom: 50, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeFromLeft(
                    child: const Image(
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/game_es_logo.png')),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FadeFromLeft(
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                'Ingresa al reino del entretenimiento: Tu puerta de acceso a la diversión está a solo un inicio de sesión de distancia. ¡Prepárate para jugar sin límites!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          FadeFromRight(
                            child: GestureDetector(
                              onTap: () {
                                authSliderPageProvider.changePage(1);
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
