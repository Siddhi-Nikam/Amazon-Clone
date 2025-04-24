import 'package:flutter/material.dart';


class AppColors{
  
  Color primaryOrange = Colors.orange;
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const yellowColor = Color(0xffFED813);
  static const backgroundColor = Colors.white;
  static const greenColor = Color(0xff057205);
  static const redColor = Color(0xffB22603);
  static const Color greyBackgroundColor = Color(0xffF6F6F6);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

    static const appBarGradient = LinearGradient(
    colors: [
      Color(0xff84D8E3),
      Color(0xffA6E6CE),
    ],
    // stops: [0.5, 1.0],
  );
  static const addressBarGradient = LinearGradient(
    colors: [
      Color(0xffB6E8EF),
      Color(0xffCBF1E2),
    ],
    stops: [0.5, 1.0],
  );

}

