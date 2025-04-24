import 'package:flutter/material.dart';

import '../BottomPagesScreens/home/HomePage.dart';
import '../BottomPagesScreens/user/userScreen.dart';

Widget buildpage(int index) {
  List<Widget> widgets = [
    
   Homepage(),
   Userscreen(),
    Center(child: Text('more')),
    Center(child: Text('cart')),
    Center(child: Text('Menu')),
    // Profile()
  ];

  return widgets[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: 'Home',
    icon: SizedBox(     
      height: 15,
      width: 15,
      child: Image.asset('assets/images/home.png'),
    ),
    tooltip: 'Home',
    activeIcon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset(
        'assets/images/home.png',
      color: Colors.orange,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'You',
    icon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/you.png'),
    ),
    tooltip: 'You',
    activeIcon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset(
        'assets/images/you.png',
         color: Colors.orange,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'Courses',
    icon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/more.png'),
    ),
    tooltip: 'Courses',
    activeIcon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset(
        'assets/images/more.png',
       color: Colors.orange,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'Chat',
    icon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/cart.png'),
    ),
    tooltip: 'Chat',
    activeIcon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset(
        'assets/images/cart.png',
       color: Colors.orange,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'Profile',
    icon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/menu.png'),
    ),
    tooltip: 'Profile',
    activeIcon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset(
        'assets/images/menu.png',
       color: Colors.orange,
      ),
    ),
  ),
];
