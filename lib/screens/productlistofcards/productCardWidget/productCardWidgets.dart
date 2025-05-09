import 'package:e_commerce_amezon_clone/screens/productDescpPage.dart/productDescpWidgets.dart';
import 'package:flutter/material.dart';

Widget productCard(
  String imgpath,
  String productname,
  String ratings,
  String price,
  BuildContext context
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width:MediaQuery.sizeOf(context).width/2,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(1,1),
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 2
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imgpath),
            seperator(),
            SizedBox(height: 1,),
            Text(productname ,style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
            Row(children: [Icon(Icons.star,color: Colors.amber,), Text(' $ratings')]),
            Text('Reviews',style: TextStyle(color: Colors.grey, fontSize: 14 , fontWeight: FontWeight.bold),),
            Text('₹ $price',style: TextStyle(fontSize: 16,color: Colors. red , fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    ),
  );
}
