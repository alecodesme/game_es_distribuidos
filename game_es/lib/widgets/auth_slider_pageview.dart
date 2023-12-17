import 'package:flutter/material.dart';
import 'package:game_es/providers/auth_slider_page_provider.dart';
import 'package:game_es/screens/app/principal.dart';
import 'package:game_es/screens/auth/login/login.dart';
import 'package:game_es/screens/auth/signup/signup.dart';
import 'package:provider/provider.dart';

class AuthSliderPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authSliderPageProvider = Provider.of<AuthSliderPageProvider>(context);
    return PageView(
      controller: authSliderPageProvider.pageController,
      onPageChanged: (value) {
        print(value);
      },
      children: [PrincipalScreen(), LoginScreen(), SignUpScreen()],
    );
  }
}
