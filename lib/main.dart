import 'package:flutter/material.dart';
import 'package:valo_stats/ui/components/Bottom%20Navigation%20Bar/bottom_nav_bar.dart';
import 'package:valo_stats/ui/pages/home/home_page.dart';
import 'package:valo_stats/app.dart';
import 'package:valo_stats/utils/constants.dart';
import 'dart:ui';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Material APP");
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(accentColor: kLightGrayColor),
          fontFamily: 'OpenSans',
          scaffoldBackgroundColor: const MaterialColor(0xFF292c31, {}),
          primaryColor: const MaterialColor(0xFFFA4454, {}),
          splashColor: Colors.red.shade400),
      home: App(),
    );
  }
}
