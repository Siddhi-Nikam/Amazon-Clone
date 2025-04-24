import 'package:flutter/material.dart';

import '../screens/auth pages/registerscreen.dart';

Widget RegisterButtonWidget(BuildContext context) {
  return GestureDetector(
    onTap: () {
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => RegisterScreen()),
      );
    },
    child: Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          'Register',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
