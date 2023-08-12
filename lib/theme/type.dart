import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO 判斷是中文用一種字型，default 用另一種
TextTheme getMyTextTheme(BuildContext context) {
  var theme = Theme.of(context);
  final textTheme = theme.textTheme.copyWith(
        titleLarge: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
        titleMedium: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
        titleSmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        headlineLarge: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
        headlineMedium: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
        ),
        headlineSmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
        bodyLarge: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
        ),
        bodySmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
        ),
        labelSmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
        ),
      );

  return GoogleFonts.notoSansTextTheme(textTheme);
}
