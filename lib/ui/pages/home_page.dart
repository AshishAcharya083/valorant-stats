import 'package:flutter/material.dart';
import 'package:valo_stats/routes/router.dart';
import 'package:valo_stats/routes/routing_constants.dart' as routing_constants;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, routing_constants.listPage);
          },
          child: const Text(
            "Homepage",
            style: TextStyle(color: Colors.yellow),
          ),
        ),
      ),
    );
  }
}
