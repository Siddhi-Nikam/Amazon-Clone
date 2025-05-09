import 'package:flutter/material.dart';

Widget mobilePhoneListRow(String mobname,String imgpath , String imgdesp , String rating , String price) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 5,
        children: [
          Image.asset(
            imgpath,
            height: 120,
            width: 120,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mobname,style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              Text(
                imgdesp,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Row(
                spacing: 5,
                children: [
                  Text(rating),
                  Icon(Icons.star,color: Colors.amber,size: 18,)
                ],
              ),
              Text(
                price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                'FREE Delivery by Amazon',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                '7 Days Replacement',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),

            ],
          ),
        ],
      ),
    ),
  );
}
