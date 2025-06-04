import 'package:flutter/material.dart';
import 'package:antunez_app/screens/screen_volume.dart';
import 'package:antunez_app/configurations/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion forestal',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const ScreenVolume()
    );
  }
}

