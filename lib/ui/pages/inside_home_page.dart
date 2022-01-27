import 'package:flutter/material.dart';
import 'package:valo_stats/ui/pages/list_page.dart';

class InsideHomePage extends StatefulWidget {
  const InsideHomePage({Key? key}) : super(key: key);

  @override
  State<InsideHomePage> createState() => _InsideHomePageState();
}

class _InsideHomePageState extends State<InsideHomePage> {
  int tempInt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.backpack)),
      ),
      body: Column(
        children: [
          Text(tempInt.toString()),
          Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      tempInt++;
                    });
                  },
                  icon: const Icon(Icons.add))),
          Center(
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ListPage()));
              },
              icon: Icon(Icons.list),
            ),
          )
        ],
      ),
    );
  }
}
