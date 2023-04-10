import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../pages/nav pages/activity.dart';
import '../pages/nav pages/duties.dart';
import '../pages/nav pages/home.dart';
import '../pages/nav pages/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
    const Home(),
    const Duties(),
    const Activity(),
    const Profile(),
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
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                onTap: onTap,
                selectedItemColor: Constants.mainColor,
                unselectedItemColor: Colors.white54,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 30.0,
                currentIndex: currentIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled), label: 'Anasayfa'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_month_outlined),
                      label: 'Takvim'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt_rounded), label: 'Aktiviteler'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_rounded),
                      label: 'Profil'),
                ]),
          )),
    );
  }
}
