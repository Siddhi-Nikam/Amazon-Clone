import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget scannerbottomsheet(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25)
    ),
    height: 400,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Container(
                  height: 3,
                  width: 50,
                color: Colors.grey,
            ),
            SizedBox(height: 20),
          Text(
            'Do more with Amazon',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Container(
            height: 180,
            decoration: BoxDecoration(
             color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top : 40.0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/amazonscannericon.png',height: 40,width: 40,),
                    SizedBox(height: 20,),
                    Text('Tap here to enable your camera', style: TextStyle(color: Colors.blue),),
                     SizedBox(height: 18,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                     SizedBox(height: 10,),
                    Text('Scan here any QR to Pay', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 16),
          Row(
            children: [
              Container(
                width: 180,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                      blurStyle : BlurStyle.normal
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/bottom_offers/amazon_pay.png',height: 40 ,width: 40,),
                    SizedBox(height: 2),
                    Text('Pay Bills, Send Money &\n More', style: TextStyle(fontWeight: FontWeight.bold ,),)
                  ],
                ),
              ),
              SizedBox(width: 10,),
               Container(
                width: 180,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                      blurStyle : BlurStyle.normal
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                             Image.asset('assets/images/minitv.png',height: 40 ,width: 40,),
                    SizedBox(height: 2),
                    Center(child: Text('Watch Free Web Series\n& Shows', style: TextStyle(fontWeight: FontWeight.bold),))
                 
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
