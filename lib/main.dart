import 'package:flutter/material.dart';
import 'package:valo_stats/ui/components/bottom_nav_bar.dart';
import 'package:valo_stats/ui/pages/home_page.dart';
import 'package:valo_stats/app.dart';

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
    return const MaterialApp(
      // initialRoute: routing_constants.homePage,

      home: App(),
    );
  }
}
