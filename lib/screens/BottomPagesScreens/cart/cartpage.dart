import 'package:e_commerce_amezon_clone/screens/BottomPagesScreens/home/homeWidget.dart';
import 'package:flutter/material.dart';

import 'cartWidgets.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff84D8E3), Color(0xffA6E6CE)],
                ),
              ),
              height: MediaQuery.sizeOf(context).height / 8.3,
              child: Column(children: [searchbar(context)]),
            ),
            SizedBox(height: 10),
            subTotal(),   
        
            emiText(),
        
            orderEligible(),
            SizedBox(height: 10),
            proceedToBuyBtn(),
            SizedBox(height: 30),
            seperatorline(),
            SizedBox(height: 20),
            productCard(),
            SizedBox(height: 20,),
            productseperatorline(),
            SizedBox(height: 20,),
            paymentDeliveryRow(),
            SizedBox(height: 20,),
          
            SizedBox(height: 20,),
            paylaterRow()
          ],
        ),
      ),
    );
  }
}
