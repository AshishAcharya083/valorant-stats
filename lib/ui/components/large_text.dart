import 'package:flutter/material.dart';
import 'package:valo_stats/utils/text_styles.dart';

class LargeTexts extends StatelessWidget {
  final String number;
  final String text;

  LargeTexts(this.number, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number,
          style: TextStyle(
              // height: 2,
              fontWeight: FontWeight.w900,
              fontSize: 40,
              color: Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: kSmallGreyTextStyle.copyWith(
            height: 1,
          ),
        )
      ],
    );
  }
}
