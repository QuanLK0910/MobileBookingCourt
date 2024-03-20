import 'package:flutter/material.dart';
import 'package:flutter_app/core/color.dart';
import 'package:flutter_app/core/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          // fixedColor: kWhiteColor,
          unselectedItemColor: kGreyColor,
          selectedItemColor: Color.fromARGB(255, 9, 104, 107),
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                label: 'Book',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Noti',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
            
          ]),
      body: SafeArea(child: screens[_currentIndex]),
    );
  }
}