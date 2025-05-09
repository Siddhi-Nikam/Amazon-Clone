import 'package:flutter/material.dart';

class Productcardlist extends StatefulWidget {
  const Productcardlist({super.key});

  @override
  State<Productcardlist> createState() => _ProductcardlistState();
}

class _ProductcardlistState extends State<Productcardlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
           // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)      
          ],
        ),
      ),
    );
  }
}