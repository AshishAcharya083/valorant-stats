import 'package:flutter/material.dart';
import 'package:valo_stats/ui/components/bottom_nav_bar.dart';
import 'package:valo_stats/ui/pages/home_page.dart';
import 'package:valo_stats/ui/pages/inside_home_page.dart';
import 'package:valo_stats/ui/pages/list_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentBodyIndex = 0;
  List<Widget> bodyList = [];
  @override
  Widget build(BuildContext context) {
    print("App called");
    return Scaffold(
      body: IndexedStack(
        index: currentBodyIndex,
        children: const [
          InsideHomePage(),
          HomePage(),
          ListPage(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(onSelectCallBack: (index) {
        setState(() {
          currentBodyIndex = index;
        });
      }),
    );
  }
}
