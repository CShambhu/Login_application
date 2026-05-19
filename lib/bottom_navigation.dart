import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_application/new.dart';
import 'package:login_application/new/profile.dart';
import 'package:login_application/settings.dart';
import 'package:login_application/truecaller.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    TrueCaller(),
    Settings(),
    Seemore(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //default Navigation Bar
      // body: _screens[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: "Settings",
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.more), label: "See More"),
      //   ],
      // ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        tabBackgroundColor: Colors.grey,
        activeColor: Colors.white,
        color: Colors.black,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.settings, text: "Settings"),
          GButton(icon: Icons.more, text: "More"),
          GButton(icon: Icons.person, text: "Profile"),
        ],
      ),
    );
  }
}
