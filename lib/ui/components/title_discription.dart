import 'package:flutter/material.dart';
import 'package:valo_stats/utils/text_styles.dart';

class TitleAndDiscription extends StatelessWidget {
  final String titleText;
  final String discription;

  TitleAndDiscription(this.titleText, this.discription);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: kSmallGreyTextStyle,
          ),
          Text(
            discription,
            style: kMediumWhiteTextStyle,
          )
        ],
      ),
    );
  }
}
