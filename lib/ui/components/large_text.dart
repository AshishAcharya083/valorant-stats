import 'package:flutter/material.dart';
import 'package:valo_stats/utils/text_styles.dart';

class LargeTexts extends StatelessWidget {
  const LargeTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "26",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 34, color: Colors.white),
        ),
        Text(
          "Rank \n Rating",
          style: kSmallGreyTextStyle,
        )
      ],
    );
  }
}
