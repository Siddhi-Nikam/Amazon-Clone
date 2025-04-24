import 'package:flutter/material.dart';

import '../scannerbottomsheet/bottomsheet.dart';

Widget searchbar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10, top: 30),
    child: Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset('assets/images/amazonsearchicon.png'),
            ),
          ),
          SizedBox(width: 10.0),
          SizedBox(
            width: 250,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Search Amazon.in',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              onTap: () {
                showBottomSheet(
                  context: (context),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  builder: (context) => scannerbottomsheet(context),
                );
              },
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/amazonscannericon.png'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SizedBox(
              width: 20,
              height: 20,
              child: Image.asset('assets/images/amazonmicicon.jpg'),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Homeaddress() {
  return Container(
    height: 30,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xffB6E8EF), Color(0xffCBF1E2)]),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Icon(Icons.location_on_outlined),
          ),
          Text('Address'),
          SizedBox(
            height: 16,
            width: 16,
            child: Image.asset('assets/images/amazondropdownicon.png'),
          ),
        ],
      ),
    ),
  );
}

Widget HomeCategories() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      spacing: 20,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/category_images/mobiles.jpeg'),
            ),
            Text('Mobiles', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/category_images/fashion.jpeg'),
            ),
            Text('Fasion', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                'assets/images/category_images/electronics.jpeg',
              ),
            ),
            Text('Electronics', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/category_images/home.jpeg'),
            ),
            Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/category_images/beauty.jpeg'),
            ),
            Text('Bueaty', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                'assets/images/category_images/appliances.jpeg',
              ),
            ),
            Text('Appliences', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
  );
}

Widget bottomOffers(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 125,
            width: MediaQuery.sizeOf(context).width / 3,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(2.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 249, 232, 184),
                  Color.fromARGB(255, 240, 202, 52),
                ],
              ),
            ),
            child: Center(
              child: Column(
                spacing: 15,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/bottom_offers/amazon_pay.png',
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/bottom_offers/amazon_recharge.png',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/bottom_offers/amazon_rewards.png',
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/bottom_offers/amazon_bills.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(4, 4),
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/homemobileofferimage.gif',
            height: 125,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(4, 4),
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/prime offer image.jpg',
            height: 125,
          ),
        ),
      ],
    ),
  );
}

Widget dealoftheday() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(4, 4),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/bestdealoftheday.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
        height: 220,
      ),
    ),
  );
}
