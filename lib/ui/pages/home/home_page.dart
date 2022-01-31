import 'package:flutter/material.dart';
import 'package:valo_stats/core/services/screen_size.dart';
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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hi, ",
                    style: TextStyle(
                      fontSize: 18,
                      color: kGreyTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Ashish Acharya",
                    style: TextStyle(
                        fontFamily: "Valorant",
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Your Statistics",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.white),
            ),
            Container(
              /// large container of light grey color
              decoration: BoxDecoration(color: kLightGrayColor),
              width: ScreenSize.getScreenWidth(context),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    /// container of dark blue color containg name of the player
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: kDarkBlueGrayColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "rian",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: " #ninho",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 24,
                                  letterSpacing: 1.2,
                                  color: kGreyTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// rank icon and rating kd win rate
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                height: 100,
                                width: 100,
                                image: AssetImage("images/rank/gold1.png"),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(text: "Rating "),
                                  )
                                ],
                              ),
                            )
                            // Image.asset('images/rank_icon/diamond1.png'),
                          ],
                        )
                      ],
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
