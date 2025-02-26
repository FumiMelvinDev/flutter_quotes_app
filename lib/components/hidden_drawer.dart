import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:quotary_app/pages/Home_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myBaseStyle = TextStyle(
    color: Colors.black45,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
  );

  final mySelectedStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        HomePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.white54,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
    );
  }
}
