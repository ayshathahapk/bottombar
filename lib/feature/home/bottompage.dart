import 'package:abcd/feature/home/page.dart';
import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'spot.dart';
import 'ratealert.dart';
import 'more.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int currentIndex = 0;

  List<Widget> pages = [
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
         selectedIndex: currentIndex,  // Ensure this is passed
        animationDuration: const Duration(milliseconds: 300),  // Animation duration
        animationCurve: Curves.bounceIn,  // Animation curve
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


