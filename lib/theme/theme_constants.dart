import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.orange.shade600,
    onPrimary: Colors.black87,
    secondary: Colors.orange.shade50,
    onSecondary: Colors.orange.shade600,
    error: Colors.red,
    onError: Colors.black87,
    background: Colors.white70,
    onBackground: Colors.black87,
    surface: Colors.white70,
    onSurface: Colors.black87,
  ),
  hintColor: Colors.orange.shade600,
  fontFamily: GoogleFonts.notoSans().fontFamily,
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.deepOrange,
    onPrimary: Colors.white,
    secondary: Colors.deepOrange.shade50,
    onSecondary: Colors.deepOrange,
    error: Colors.red,
    onError: Colors.black87,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
  ),
  hintColor: Colors.deepOrange,
  fontFamily: GoogleFonts.notoSans().fontFamily,
);
