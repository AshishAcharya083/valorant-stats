import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final void Function(int index)? onSelectCallBack;

  const CustomBottomNavigationBar({@required this.onSelectCallBack, Key? key})
      : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    print("Custom Bottm Nav Bar");
    return Container(
      margin: EdgeInsets.all(10),
      child: SnakeNavigationBar.color(
        shadowColor: Colors.red,
        elevation: 5,
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.rectangle,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))),
        // shape: ShapeBorder(
        //
        // ),

        padding: const EdgeInsets.symmetric(vertical: 12),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: Colors.red.shade400,
        // selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Colors.black,

        ///configuration for SnakeNavigationBar.gradient
        // snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        // showUnselectedLabels: showUnselectedLabels,
        // showSelectedLabels: showSelectedLabels,

        currentIndex: selectedIndex,

        // onTap: (index) => setState(() => _selectedItemPosition = index),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          print("Current index is $index");
          widget.onSelectCallBack!(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'tickets'),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'calendar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.update), label: 'microphone'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'search')
        ],
      ),
    );
  }
}
