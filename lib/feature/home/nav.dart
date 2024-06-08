import 'package:abcd/feature/home/page.dart';
import 'package:abcd/feature/home/ratealert.dart';
import 'package:abcd/feature/home/spot.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'more.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Spot(),
    RateAlert(),
    Home(),
     More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.pink,
        animationDuration: Duration(milliseconds: 300,),
        animationCurve: Curves.easeInOut,
        buttonBackgroundColor: Colors.blueGrey,
        index: _currentIndex,color: Colors.white54,
        onTap: (index) => setState(() => _currentIndex = index),
        items:    <Widget>[
          Icon(Icons.location_on_rounded, size: 30, color: Colors.red),
          Icon(Icons.list, size: 30, color: Colors.red),
          Icon(Icons.person, size: 30, color: Colors.red),
          Icon(Icons.more, size: 30, color: Colors.red),
        ],
      ),
    );
  }
}
