import 'package:flutter/material.dart';
import 'package:antunez_app/screens/screen_biomas.dart';
import 'package:antunez_app/configurations/app_theme.dart';
import 'package:antunez_app/screens/home_screen.dart';
import 'package:antunez_app/screens/screen_volume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion forestal',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        ScreenBiomas.routeName: (_) => const ScreenBiomas(),
        ScreenVolume.routeName: (_) => const ScreenVolume(),
      },
    );
  }
}

