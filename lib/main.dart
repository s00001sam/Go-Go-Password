import 'package:flutter/material.dart';
import 'package:gogo_password/theme/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gogoPassword',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Center(),
    );
  }
}
