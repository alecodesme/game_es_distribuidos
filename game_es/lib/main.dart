import 'package:flutter/material.dart';
import 'package:game_es/constants/routes.dart';
import 'package:game_es/providers/auth_slider_page_provider.dart';
import 'package:game_es/providers/game_provider.dart';
import 'package:game_es/providers/signup_provider.dart';
import 'package:game_es/routes/routes.dart';
import 'package:game_es/utils/preferences/app_preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Prefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget app = MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: AppNavigation.init,
      routes: AppRoutes.routes,
    );
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AuthSliderPageProvider()),
      ChangeNotifierProvider(create: (_) => SignUpProvider()),
      ChangeNotifierProvider(create: (_) => GameProvider()),
    ], child: app);
  }
}
