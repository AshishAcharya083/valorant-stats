import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valo_stats/routes/routing_constants.dart';
import 'package:valo_stats/ui/pages/home_page.dart';
import 'package:valo_stats/ui/pages/inside_home_page.dart';
import 'package:valo_stats/ui/pages/list_page.dart';

List<String> navStack = ["Home"];

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => const HomePage());

      case listPage:
        navStack.add("Home");
        return PageRouteBuilder(
            transitionDuration: const Duration(),
            pageBuilder: (context, animation1, animation2) => const ListPage());

      case insideHomePage:
        navStack.add("insideHOmePAge");
        return PageRouteBuilder(
            transitionDuration: const Duration(),
            pageBuilder: (context, animation1, animation2) =>
                const InsideHomePage());
      default:
        throw const FormatException("Route not found");
    }
  }
}
