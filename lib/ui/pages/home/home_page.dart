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
        // backgroundColor: kPrimaryBlueGrayColor,
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, Rupesh Acharya",
              style: TextStyle(
                  fontFamily: "Valorant",
                  color: kLightGrayTextColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  TextSpan(
                      text: "VALORANT",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Valorant",
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade400)),
                  TextSpan(
                      text: " Stats",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
