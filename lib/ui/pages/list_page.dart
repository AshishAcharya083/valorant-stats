import 'package:flutter/material.dart';

import 'package:valo_stats/ui/pages/home/home_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  void initState() {
    print("INITSTATE of list page called");
    super.initState();
  }

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
              Navigator.of(context, rootNavigator: true)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: const Text('List Page')),
      ),
    );
  }
}
