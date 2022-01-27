import 'package:flutter/material.dart';
import 'package:valo_stats/ui/components/bottom_nav_bar.dart';
import 'package:valo_stats/ui/components/tab_navigatior.dart';
import 'package:valo_stats/ui/pages/home_page.dart';
import 'package:valo_stats/ui/pages/inside_home_page.dart';
import 'package:valo_stats/ui/pages/list_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // int currentBodyIndex = 0;
  List<Widget> bodyList = [];
  String currentPage = "HomePage";
  List<String> pageKeys = ["HomePage", "InsideHomePage", "ThirdPage"];

  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "HomePage": GlobalKey<NavigatorState>(),
    "InsideHomePage": GlobalKey<NavigatorState>(),
    "ThirdPage": GlobalKey<NavigatorState>(),
  };

  void selectTab(String tabItem, int index) {
    if (tabItem == currentPage) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        currentPage = pageKeys[index];
//            currentBodyIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Current page is $currentPage");
    print("App called");
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[currentPage]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (currentPage != "HomePage") {
            // selectTab("HomePage", 0);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
        //return Future.value(false);
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator("HomePage"),
            _buildOffstageNavigator("InsideHomePage"),
            _buildOffstageNavigator("ThirdPage"),
          ],
        ),
        bottomNavigationBar:
            CustomBottomNavigationBar(onSelectCallBack: (index) {
          selectTab(pageKeys[index], index);
        }),
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
