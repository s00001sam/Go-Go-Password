import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gogo_password/theme/theme_constants.dart';
import 'package:gogo_password/theme/type.dart';
import 'package:gogo_password/view/home_page.dart';

import 'generated/l10n.dart';

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
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        ...GlobalCupertinoLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: const [
        Locale("zh"),
        Locale("en"),
      ],
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
