import 'package:flutter/material.dart';
import 'package:valo_stats/utils/text_styles.dart';

class GreyWhiteTextComponent extends StatelessWidget {
  final String? greyText;
  final String? whiteText;
  const GreyWhiteTextComponent(this.greyText, this.whiteText);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.right,
      text: TextSpan(
        style: TextStyle(fontFamily: "OpenSans"),
        children: [
          TextSpan(
            text: "${this.greyText}  ",
            style: kSmallGreyTextStyle,
          ),
          TextSpan(
            text: "${this.whiteText!.toUpperCase()} ",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          )
        ],
      ),
    );
  }
}
