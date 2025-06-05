import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Sirve para definir el tema de la aplicacion.
final appColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color.fromARGB(255, 242, 232, 207),
  surface: const Color.fromARGB(255, 242, 232, 207),
);

// Varible final que define el estilo que se le dara a los textos de la aplicacion.
final appTextTheme = GoogleFonts.josefinSansTextTheme().copyWith(
  bodyMedium: GoogleFonts.josefinSans(fontWeight: FontWeight.normal, fontSize: 16),
  bodyLarge: GoogleFonts.josefinSans(fontWeight: FontWeight.normal, fontSize: 18),
  titleLarge: GoogleFonts.josefinSans(fontWeight: FontWeight.bold, fontSize: 20),
  titleMedium: GoogleFonts.josefinSans(fontWeight: FontWeight.bold, fontSize: 18),
  titleSmall: GoogleFonts.josefinSans(fontWeight: FontWeight.bold, fontSize: 16),
);

final appTheme = ThemeData().copyWith(
  scaffoldBackgroundColor: appColorScheme.surface,
  colorScheme: appColorScheme,
  textTheme: appTextTheme,
);
