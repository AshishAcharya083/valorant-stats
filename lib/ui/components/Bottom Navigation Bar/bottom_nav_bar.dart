import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:valo_stats/utils/constants.dart';

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
    return SnakeNavigationBar.color(
      backgroundColor: kLightGrayColor,

      shadowColor: Colors.black,
      elevation: 5,
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.rectangle,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      padding: EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),

      ///configuration for SnakeNavigationBar.color
      // snakeViewColor: kPrimaryPinkColor,
      snakeViewColor: Colors.red.shade400,
      // selectedItemColor: snakeShape == Sna
      // keShape.indicator ? selectedColor : null,
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
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard_outlined),
          label: 'leaderboard',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: 'microphone'),
      ],
    );
  }
}
