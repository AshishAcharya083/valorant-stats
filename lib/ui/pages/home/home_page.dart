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
            Text(
              "Hi, Aayush Acharya",
              style: TextStyle(
                  fontFamily: "Valorant",
                  color: kGreyTextColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  fontSize: 18),
            ),
            // const SizedBox(
            //   height: 5,
            // ),

            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
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
                          fontSize: 22))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Your Statistics",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),

            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: kDarkBlueGrayColor),
                    child: Column(
                      children: [Text("rian")],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
