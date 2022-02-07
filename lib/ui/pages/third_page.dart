import 'package:flutter/material.dart';
import 'package:valo_stats/utils/text_styles.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  void initState() {
    print("INITSTATE of third page called");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            "Third Page",
            style: kExtraBoldTextStyle,
          ),
        ),
      ),
    );
  }
}
