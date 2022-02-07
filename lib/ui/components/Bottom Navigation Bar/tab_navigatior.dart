import 'package:flutter/material.dart';
import 'package:valo_stats/ui/pages/home/home_page.dart';
import 'package:valo_stats/ui/pages/inside_home_page.dart';
import 'package:valo_stats/ui/pages/third_page.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final String? tabItem;
  TabNavigator({Key? key, this.navigatorKey, this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (tabItem == "HomePage") {
      child = HomePage();
    } else if (tabItem == "InsideHomePage") {
      child = InsideHomePage();
    } else if (tabItem == "ThirdPage") {
      child = ThirdPage();
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child!);
      },
    );
  }
}
