import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:valo_stats/core/services/screen_size.dart';
import 'package:valo_stats/ui/components/grey_white_text_comp.dart';
import 'package:valo_stats/ui/components/large_text.dart';
import 'package:valo_stats/ui/components/title_discription.dart';
import 'package:valo_stats/ui/pages/drawer.dart';

import 'package:valo_stats/ui/pages/inside_home_page.dart';
import 'package:valo_stats/ui/pages/third_page.dart';
import 'package:valo_stats/utils/constants.dart';
import 'package:valo_stats/utils/text_styles.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
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
              Text(
                "Your Statistics gg ",
                style: kExtraBoldTextStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Positioned(
                      right: -100,
                      bottom: -100,
                      child: Image(
                        image: AssetImage("images/rank/platinum1.png"),
                      )),
                  Container(
                    /// large container of light grey color
                    decoration: BoxDecoration(color: kLightGrayColor),
                    width: ScreenSize.getScreenWidth(context),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        /// container of dark blue color containg name of the player
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: ScreenSize.getScreenHeight(context) * 0.4,
                          decoration: BoxDecoration(
                            color: kDarkBlueGrayColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      image: AssetImage(
                                          "images/rank/platinum1.png"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GreyWhiteTextComponent(
                                            "Rating", "platinum 3"),
                                        GreyWhiteTextComponent(
                                            "KAD Ratio", "1.42"),
                                        GreyWhiteTextComponent(
                                            "Win Rate", "46.1 %"),
                                      ],
                                    ),
                                  )
                                  // Image.asset('images/rank_icon/diamond1.png'),
                                ],
                              ),

                              /// play time and no. of matches
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GreyWhiteTextComponent(
                                      "Play Time", "245H 16M"),
                                  GreyWhiteTextComponent("Matches", "423"),
                                ],
                              ),

                              /// rank ratings and rating needed to promotion
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LargeTexts("26", "Rank \nRating"),
                                  LargeTexts(
                                      "76", "Rating Needed \nto Promotion")
                                ],
                              )
                            ],
                          ),
                        ),

                        /// Grid formed from Row which contains two columns to
                        /// show key value stats of player

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TitleAndDiscription("Damage/Round", "132"),
                                  TitleAndDiscription("Headshots", "38%"),
                                  TitleAndDiscription("Kills", "16523"),
                                  TitleAndDiscription("Deaths", "545"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TitleAndDiscription("Damage/Round", "132"),
                                  TitleAndDiscription("Headshots", "38%"),
                                  TitleAndDiscription("Kills", "16523"),
                                  TitleAndDiscription("Deaths", "545"),
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
            ],
          ),
        ),
      ),
    );
  }
}
