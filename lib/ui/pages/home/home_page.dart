import 'package:flutter/material.dart';
import 'package:valo_stats/ui/pages/drawer.dart';

import 'package:valo_stats/ui/pages/inside_home_page.dart';
import 'package:valo_stats/ui/pages/third_page.dart';
import 'package:valo_stats/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryBlueGrayColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Home Page ",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ));
  }
}
