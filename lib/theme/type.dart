import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO 判斷是中文用一種字型，default 用另一種
TextTheme getMyTextTheme(BuildContext context) {
  final textTheme = Theme.of(context).textTheme.copyWith(
        titleLarge: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          height: 38.0,
        ),
        titleMedium: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          height: 32.0,
        ),
        titleSmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          height: 28.0,
        ),
        headlineLarge: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          height: 26.0,
        ),
        headlineMedium: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          height: 24.0,
        ),
        headlineSmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          height: 22.0,
        ),
        bodyLarge: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
          height: 24.0,
        ),
        bodySmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
          height: 22.0,
        ),
        labelSmall: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          height: 20.0,
        ),
      );

  return GoogleFonts.notoSansTextTheme(textTheme);
}
