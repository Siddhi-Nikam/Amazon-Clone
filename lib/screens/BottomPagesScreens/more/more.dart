import 'package:flutter/material.dart';

import 'moreWidgets.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 148, 233, 244),
              Color.fromARGB(255, 252, 254, 253),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 8.3,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  moreCategoryWidget(
                    'Mobiles \nSmart Phones',
                    'assets/images/category_images/mobiles.jpeg',
                  ),
                  moreCategoryWidget(
                    'Fasion \n& Clothing',
                    'assets/images/category_images/fashion.jpeg',
                  ),
                  moreCategoryWidget(
                    'Electronics \n& Audios',
                    'assets/images/category_images/electronics.jpeg',
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  moreCategoryWidget(
                    'Home ,\nKitchen & Decor',
                    'assets/images/category_images/home.jpeg',
                  ),
                  moreCategoryWidget(
                    'Beaty \n& Skincare',
                    'assets/images/category_images/beauty.jpeg',
                  ),
                  moreCategoryWidget(
                    'Appliences',
                    'assets/images/category_images/appliances.jpeg',
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  moreCategoryWidget(
                    'Grocery , Food\n & Beverages',
                    'assets/images/category_images/grocery.jpeg',
                  ),
                  moreCategoryWidget(
                    'Books ,\nNovels',
                    'assets/images/category_images/books.jpeg',
                  ),

                  moreCategoryWidget(
                    'Essentials\n& Kitchen',
                    'assets/images/category_images/essentials.jpeg',
                  ),
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.only(top : 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    moreBottomBtns('Orders'),
                    moreBottomBtns('History'),
                    moreBottomBtns('Account'),
                    moreBottomBtns('Wish List'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
