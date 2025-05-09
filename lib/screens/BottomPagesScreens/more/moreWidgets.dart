import 'package:flutter/material.dart';

Widget moreCategoryWidget(String categoryName, String imgpath) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 140,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),

            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
        border: Border.all(color: Colors.grey),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            Text(
              categoryName,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Image.asset(imgpath, height: 60, width: 60),
          ],
        ),
      ),
    ),
  );
}

Widget moreBottomBtns(String btnname) {
  return Container(
    height: 40,
    width : 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey)
    ),
    child: Center(child: Text(btnname , style: TextStyle(fontWeight: FontWeight.bold),)),
  );
}
