import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:abcd/feature/home/page.dart';
import 'package:abcd/feature/home/ratealert.dart';
import 'package:abcd/feature/home/spot.dart';
import 'more.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  List pages = [
    Spot(),
    RateAlert(),
    Home(),
    More(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: pages[currentIndex], // Display the current page based on the index
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.width * 0.25, // Correct height calculation
        decoration: BoxDecoration(
          color: Colors.lightGreen[100],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(MediaQuery.of(context).size.width * 0.12),
            topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: Offset.zero,
              spreadRadius: 2,
              blurRadius: 4,
            ),
          ],
        ),
        child: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: onTap,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: SvgPicture.asset("assets/images/home.svg"),
              title: Text(
                "Home",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.blue,
            ),

            /// Cart
            SalomonBottomBarItem(
              icon: SvgPicture.asset("assets/images/cart.svg"),
              title: Text(
                "Cart",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.green,
            ),

            /// Notification
            SalomonBottomBarItem(
              icon: SvgPicture.asset("assets/images/notification.svg"),
              title: Text(
                "Notification",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: SvgPicture.asset("assets/images/profile.svg"),
              title: Text(
                "Profile",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
