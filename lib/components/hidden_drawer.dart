import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:quotary_app/pages/Business_page.dart';
import 'package:quotary_app/pages/Creativity_page.dart';
import 'package:quotary_app/pages/Education_page.dart';
import 'package:quotary_app/pages/Ethics_page.dart';
import 'package:quotary_app/pages/Family_page.dart';
import 'package:quotary_app/pages/Famous_page.dart';
import 'package:quotary_app/pages/Film_page.dart';
import 'package:quotary_app/pages/Friendship_page.dart';
import 'package:quotary_app/pages/Happiness_page.dart';
import 'package:quotary_app/pages/History_page.dart';
import 'package:quotary_app/pages/Home_page.dart';
import 'package:quotary_app/pages/Humor_page.dart';
import 'package:quotary_app/pages/Inspirational_page.dart';
import 'package:quotary_app/pages/Love_page.dart';

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
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Business Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        BusinessPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Creativity Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        CreativityPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Educational Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        EducationPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Ethics Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        EthicsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Family Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        FamilyPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Famous Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        FamousPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Film Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        FilmPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Friendship Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        FriendshipPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Happiness Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        HappinessPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'History Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        HistoryPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Humor Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        HumorPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Inspirational Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        InspirationalPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Love Quotes',
          baseStyle: myBaseStyle,
          selectedStyle: TextStyle(),
        ),
        LovePage(),
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
