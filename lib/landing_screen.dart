import 'package:ddea_official/constants/color_system.dart';
import 'package:ddea_official/give_screen.dart';
import 'package:ddea_official/profile_screen.dart';
import 'package:ddea_official/sermon_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'news_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = 'landing';
  final int currentIndex;
  const LandingScreen({Key? key, required this.currentIndex}) : super(key: key);
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late int _currentIndex;
  final currentScreen = [
    HomeScreen(),
    SermonScreen(),
    GiveScreen(),
    NewsScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    _currentIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedFontSize: 10.0,
        selectedFontSize: 10.0,
        selectedItemColor: ColorSystem.primary,
        selectedLabelStyle: TextStyle(
          color: ColorSystem.primary,
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w600,
        ),
        items: [
          //Home
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home_outlined,
              size: 20.0,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
              size: 26.0,
              color: ColorSystem.primary,
            ),
          ),
          // Events
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.favorite_outline,
              size: 20.0,
            ),
            label: 'Sermon',
            activeIcon: Icon(
              Icons.favorite,
              size: 26.0,
              color: ColorSystem.primary,
            ),
          ),
          // Invites
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.favorite_outline,
              size: 20.0,
            ),
            label: 'Give',
            activeIcon:
                Icon(Icons.favorite, size: 26.0, color: ColorSystem.primary),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.book_outlined,
              size: 20.0,
            ),
            label: 'News',
            activeIcon:
                Icon(Icons.book, size: 26.0, color: ColorSystem.primary),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person_outlined,
              size: 20.0,
            ),
            label: 'Profile',
            /* activeIcon: Image.asset(
              "assets/icons/invites_selected.png",
              width: 26,
              height: 26,
            ), */
            activeIcon:
                Icon(Icons.person, size: 26.0, color: ColorSystem.primary),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
