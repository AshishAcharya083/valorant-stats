import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final BuildContext? cxt;
  const MyDrawer({Key? key, this.cxt}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: const [
          Text("Drawer Item"),
          Text("Drawer Item"),
          Text("Drawer Item"),
          Text("Drawer Item"),
          Text("Drawer Item"),
          Text("Drawer Item"),
        ],
      ),
    ));
  }
}
