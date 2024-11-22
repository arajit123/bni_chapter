import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/screens/Tabs/add_user.dart';
import 'package:bni_chapter/screens/Tabs/home_screen.dart';
import 'package:bni_chapter/screens/Tabs/notifications.dart';
import 'package:bni_chapter/screens/Tabs/profile_screen.dart';

class HomeContainerScreen extends StatefulWidget {
  const HomeContainerScreen({super.key});

  @override
  State<HomeContainerScreen> createState() => _HomeContainerScreenState();
}

class _HomeContainerScreenState extends State<HomeContainerScreen> {
  int _selectedIndex = 0;

  // List of screens to display based on the selected index
  final List<Widget> _screens = [
    const HomeScreen(),
    const CreateUser(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  // Method to handle changing the bottom navigation bar index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.5), // Elevation color (shadow color)
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: StylishBottomBar(
          elevation: 8, // For elevation (height above the screen)
          backgroundColor: Colors.white,
          option: DotBarOptions(
            padding: const EdgeInsets.all(0),
            dotStyle: DotStyle.circle,
            iconSize: 25,
            gradient: const LinearGradient(
              colors: [
                blueTextColor,
                primaryColor,
              ],
              begin: Alignment.center,
              end: Alignment.bottomRight,
            ),
          ),
          items: [
            BottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              backgroundColor: iconColor,
              selectedIcon: const Icon(Icons.home),
            ),
            BottomBarItem(
              icon: const Icon(Icons.person_add),
              title: const Text('Create \nProfile'),
              backgroundColor: iconColor,
              selectedIcon: const Icon(Icons.person_add),
            ),
            BottomBarItem(
              icon: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              backgroundColor: iconColor,
              selectedIcon: const Icon(Icons.notifications),
            ),
            BottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              backgroundColor: iconColor,
              selectedIcon: const Icon(Icons.person),
            ),
          ],
          hasNotch: true,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
