import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';
import 'package:game_es/constants/routes.dart';
import 'package:game_es/providers/auth_slider_page_provider.dart';
import 'package:game_es/shared/animations/fade_from_bottom.dart';
import 'package:game_es/widgets/init_blur_cover_image.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
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
    final authSliderPageProvider = Provider.of<AuthSliderPageProvider>(context);
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: InitBlurCoverImage(),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: FadeFromBottom(
              child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('assets/images/game_es_logo.png')),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 44,
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 0.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                contentPadding: EdgeInsets.zero,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.person_outline),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                filled: true),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 44,
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 0.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                contentPadding: EdgeInsets.zero,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.password),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                filled: true),
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                            width: 200,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppNavigation.home);
                              },
                              child: Text(
                                'Ingresar',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        SizedBox(height: 30),
                        Text(
                          'Olvide mi contraseña',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            authSliderPageProvider.changePage(2);
                          },
                          child: Text(
                            'Registrarme',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        )
      ]),
    );
  }
}
