// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:core';
import 'package:e_commerce_amezon_clone/screens/productlistofcards/productCardWidget/productCardWidgets.dart';
import 'package:flutter/material.dart';

import 'productDescpWidgets.dart';

// ignore: must_be_immutable
class Productdescp extends StatefulWidget {
  String mobilename;
  String mobileImageList;
  String decpMobile;
  String mobileRating;
  String mobilePrice;

  Productdescp({
    Key? key,
    required this.mobilename,
    required this.mobileImageList,
    required this.decpMobile,
    required this.mobileRating,
    required this.mobilePrice,
  }) : super(key: key);

  @override
  State<Productdescp> createState() => _ProductdescpState();
}

class _ProductdescpState extends State<Productdescp> {
  @override
  void initState() {
    super.initState();
    mobilename = widget.mobilename;
    mobileImageList = widget.mobileImageList;
    decpMobile = widget.decpMobile;
    mobileRating = widget.mobileRating;
    mobilePrice = widget.mobilePrice;
  }

  late String mobilename;
  late String mobileImageList;
  late String decpMobile;
  late String mobileRating;
  late String mobilePrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search bar area
            Container(
              height: MediaQuery.sizeOf(context).height / 8.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff84D8E3), Color(0xffA6E6CE)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      width: 320,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/amazonsearchicon.png',
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: 'Search Amazon.in',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              'assets/images/amazonscannericon.png',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              'assets/images/amazonmicicon.jpg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    right: 20,
                    left: 20,
                    bottom: 10.0,
                  ),
                  child: Container(
                    child: Image.asset(
                      widget.mobileImageList,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [visitStore(), ratings(mobileRating)],
                ),
                productName(mobilename),
                seperator(),
                SizedBox(height: 10),
                price(mobilePrice),
                emiTextLine(),
                SizedBox(height: 20),
                seperator(),
                totalprice(mobilePrice),
                SizedBox(height: 10),
                addressText(),
                SizedBox(height: 10),
                seperator(),
                featureDetails('$mobilename \n $decpMobile \n $mobilePrice '),
                seperator(),
                customerRatings(mobileRating),
                seperator(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      productCard(
                        widget.mobileImageList,
                        mobilename,
                        mobileRating,
                        mobilePrice,
                        context,
                      ),
                      productCard(
                        widget.mobileImageList,
                        mobilename,
                        mobileRating,
                        mobilePrice,
                        context,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
