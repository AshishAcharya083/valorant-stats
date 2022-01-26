import 'package:flutter/material.dart';
import 'package:valo_stats/routes/routing_constants.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.backpack)),
      ),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, homePage);
            },
            child: const Text('List Page')),
      ),
    );
  }
}
