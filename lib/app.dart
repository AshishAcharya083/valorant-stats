import 'package:flutter/material.dart';
import 'package:valo_stats/ui/components/bottom_nav_bar.dart';
import 'package:valo_stats/ui/pages/home_page.dart';
import 'package:valo_stats/ui/pages/list_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int currentTab = 0;
  void selectTab(int tabItem) {
    setState(() {
      currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePage(key: GlobalKey<NavigatorState>()),
          ListPage(
            key: GlobalKey<NavigatorState>(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onSelectCallBack: (index) {
          selectTab(index);
        },
      ),
    );
  }
}
