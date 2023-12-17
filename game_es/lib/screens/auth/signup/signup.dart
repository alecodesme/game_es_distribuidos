import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';
import 'package:game_es/providers/auth_slider_page_provider.dart';
import 'package:game_es/providers/signup_provider.dart';
import 'package:game_es/shared/animations/fade_from_bottom.dart';
import 'package:game_es/widgets/alerts/signup_failed.dart';
import 'package:game_es/widgets/init_blur_cover_image.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authSliderPageProvider = Provider.of<AuthSliderPageProvider>(context);
    final signUpProvider = Provider.of<SignUpProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
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
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
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
                              child: TextFormField(
                                onChanged: (value) =>
                                    signUpProvider.onChangeName(value),
                                style: TextStyle(fontSize: 15),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    hintText: 'Nombre',
                                    errorStyle: TextStyle(
                                        height: 0.0, color: Colors.white),
                                    errorText: signUpProvider.name.error,
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
                              child: TextField(
                                style: TextStyle(fontSize: 15),
                                onChanged: (value) =>
                                    signUpProvider.onChangeLastName(value),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    hintText: 'Apellidos',
                                    errorStyle: TextStyle(
                                        height: 0.0, color: Colors.white),
                                    errorText: signUpProvider.lastname.error,
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
                              child: TextField(
                                style: TextStyle(fontSize: 15),
                                textAlignVertical: TextAlignVertical.center,
                                onChanged: (value) =>
                                    signUpProvider.onChangeDocument(value),
                                decoration: InputDecoration(
                                    hintText: 'DNI/NIE',
                                    errorStyle: TextStyle(
                                        height: 0.0, color: Colors.white),
                                    errorText: signUpProvider.document.error,
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
                              child: TextField(
                                style: TextStyle(fontSize: 15),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    hintText: 'Fecha de cumpleaños',
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
                              child: TextField(
                                style: TextStyle(fontSize: 15),
                                textAlignVertical: TextAlignVertical.center,
                                onChanged: (value) =>
                                    signUpProvider.onChangeEmail(value),
                                decoration: InputDecoration(
                                    hintText: 'email',
                                    errorStyle: TextStyle(
                                        height: 0.0, color: Colors.white),
                                    errorText: signUpProvider.email.error,
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
                              child: TextField(
                                style: TextStyle(fontSize: 15),
                                textAlignVertical: TextAlignVertical.center,
                                onChanged: (value) =>
                                    signUpProvider.onChangePassword(value),
                                decoration: InputDecoration(
                                    hintText: 'Contraseña',
                                    errorStyle: TextStyle(
                                        height: 0.0, color: Colors.white),
                                    errorText: signUpProvider.password.error,
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
                              child: TextField(
                                style: TextStyle(fontSize: 15),
                                onChanged: (value) =>
                                    signUpProvider.onChangeRepeatedPassword(
                                        value, signUpProvider.password.value),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    errorStyle: TextStyle(
                                        height: 0.0, color: Colors.white),
                                    errorText:
                                        signUpProvider.repeatedPassword.error,
                                    hintText: 'Repetir Contraseña',
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
                                    // showDialog(
                                    //   context: context,
                                    //   builder: (context) {
                                    //     return SignupFailedDialog();
                                    //   },
                                    // );
                                    authSliderPageProvider.changePage(1);
                                  },
                                  child: Text(
                                    'Registrarme',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                            SizedBox(height: 20),
                            Text(
                              'Ya tienes cuenta? Inicia sesión.',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
