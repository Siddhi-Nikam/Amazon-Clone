import 'package:e_commerce_amezon_clone/screens/productDescpPage.dart/productDescp.dart';
import 'package:flutter/material.dart';
import 'mobilephonelistWidgets.dart';

class Mobilephones extends StatefulWidget {
  const Mobilephones({super.key});

  @override
  State<Mobilephones> createState() => _MobilephonesState();
}

class _MobilephonesState extends State<Mobilephones> {
  List mobilename = ['Samsung Galaxy', 'Vivo', 'Oneplus'];
  List mobileImageList = [
    'assets/images/product images/galaxy.jpg',
    'assets/images/product images/vivo.jpg',
    'assets/images/product images/oneplus.jpg',
  ];
  List decpMobile = [
    '50MP Dual Camera 5000mAh Battery',
    '50MP Dual Camera 4000mAh Battery',
    '50MP Dual Camera 4000mAh Battery',
  ];
  List mobileRating = ['4.5', '4.0', '4.1'];
  List mobilePrice = ['19,999', '18,000', '20,000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
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

            // List
            Expanded(
              child: ListView.builder(
                itemCount: mobileImageList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: mobilePhoneListRow(
                      mobilename[index],
                      mobileImageList[index],
                      decpMobile[index],
                      mobileRating[index],
                      mobilePrice[index],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => Productdescp(
                                mobilename: mobilename[index],
                                mobileImageList: mobileImageList[index],
                                decpMobile: decpMobile[index],
                                mobileRating: mobileRating[index],
                                mobilePrice: mobilePrice[index],
                              ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
