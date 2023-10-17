import 'package:commissioning_calculator/screens/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomTabNavigator extends StatelessWidget {
  //const BottomTabNavigator({super.key});

  int selectedIndex = 0;

  BottomTabNavigator({super.key});

  void navIcons(int index) {
    selectedIndex = index;
  }

  final List<Widget> pages = [
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 3.0))),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'Edit Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          //currentIndex: _selectedIndex,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          //onTap:,
        ),
      ),
    );
  }
}
