import 'package:flutter/material.dart';

import '../BottomPagesScreens/cart/cartpage.dart';
import '../BottomPagesScreens/home/HomePage.dart';
import '../BottomPagesScreens/more/more.dart';
import '../BottomPagesScreens/user/userScreen.dart';

Widget buildpage(int index) {
  List<Widget> widgets = [
    
   Homepage(),
   Userscreen(),
   Cartpage(),
   More()
   
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
    label: 'Cart',
    icon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/cart.png'),
    ),
    tooltip: 'Cart',
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
    label: 'Menu',
    icon: SizedBox(
      height: 15,
      width: 15,
      child: Image.asset('assets/images/menu.png'),
    ),
    tooltip: 'Menu',
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
