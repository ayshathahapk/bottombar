
import 'package:abcd/feature/home/page.dart';
import 'package:abcd/feature/home/ratealert.dart';
import 'package:abcd/feature/home/spot.dart';
import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'more.dart';

class MatuBottom extends StatefulWidget {
  const MatuBottom({super.key});

  @override
  State<MatuBottom> createState() => _MatuBottomState();
}

class _MatuBottomState extends State<MatuBottom> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Spot(),
    RateAlert(),
    Home(),
    More(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: FlashyTabBar(
        showElevation: true,
        onItemSelected: onTap,
        selectedIndex: currentIndex,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.bounceIn,
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Spot'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Rate Alert'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
