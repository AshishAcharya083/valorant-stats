import 'package:flutter/material.dart';
import 'package:valo_stats/ui/components/bottom_nav_bar.dart';
import 'package:valo_stats/ui/pages/home_page.dart';
import 'package:valo_stats/app.dart';
import 'package:valo_stats/routes/router.dart' as router;
import 'package:valo_stats/routes/routing_constants.dart' as routing_constants;

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
      onGenerateRoute: router.RouteManager.generateRoute,
      home: App(),
    );
  }
}
