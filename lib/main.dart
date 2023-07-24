import 'package:flutter/material.dart';
import 'package:gogo_password/theme/theme_constants.dart';
import 'package:gogo_password/theme/type.dart';
import 'package:gogo_password/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var myTextTheme = getMyTextTheme(context);

    return MaterialApp(
      title: 'gogoPassword',
      theme: lightTheme.copyWith(
        textTheme: myTextTheme,
      ),
      darkTheme: darkTheme.copyWith(
        textTheme: myTextTheme,
      ),
      home: const HomePage(),
    );
  }
}
