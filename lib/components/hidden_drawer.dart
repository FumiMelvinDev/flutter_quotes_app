import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:quotary_app/pages/AchievementAndMotivation_page.dart';
import 'package:quotary_app/pages/ArtsAndExpression_page.dart';
import 'package:quotary_app/pages/Home_page.dart';
import 'package:quotary_app/pages/KnowledgeAndCreativity_page.dart';
import 'package:quotary_app/pages/LifeAndGrowth_page.dart';
import 'package:quotary_app/pages/PhilosophyAndConcepts_page.dart';
import 'package:quotary_app/pages/SocietyAndInteraction_page.dart';
import 'package:quotary_app/pages/SportsAndCompetition_page.dart';
import 'package:quotary_app/pages/Technology_page.dart';
import 'package:quotary_app/pages/ValuesAndSpirituality_page.dart';
import 'package:quotary_app/pages/WorldAndHistory_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myBaseStyle = TextStyle(
    color: Colors.blueGrey[200],
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
  );

  final mySelectedStyle = TextStyle(
    color: Colors.blueGrey[400],
    fontWeight: FontWeight.w600,
  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Random',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Achievement & Motivation',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        AchievementandmotivationPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Arts & Expression',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        ArtsandexpressionPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Knowledge & Creativity',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        KnowledgeandcreativityPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Life & Growth',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        LifeandgrowthPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Philosophy & Concepts',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        PhilosophyandconceptsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Society & Interactions',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        SocietyandinteractionPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Sports & Competition',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        SportsandcompetitionPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Technology',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        TechnologyPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Values & Spirituality',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        ValuesandspiritualityPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'World & History',
          baseStyle: myBaseStyle,
          selectedStyle: mySelectedStyle,
        ),
        WorldandhistoryPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.white54,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60,
    );
  }
}
