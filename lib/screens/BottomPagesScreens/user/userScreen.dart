import 'package:flutter/material.dart';
import 'userWidget.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userappbar(context),
            usernameContainer(),
            blurContainer(),
            SizedBox(height: 20),
            userOrderrow('Your Orders', 'See all'),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               userOrders(context, 'assets/images/product images/galaxy.jpg'),
               userOrders(context, 'assets/images/product images/oneplus.jpg')],
            ),
            SizedBox(height: 30),
            seperatorContainer(),
            SizedBox(height: 20),
            userOrderrow('Keep shopping for', 'Browsing history'),
            SizedBox(height: 20,),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               userOrders(context, 'assets/images/product images/apple.jpg'),
               userOrders(context, 'assets/images/product images/iqoo.jpg')],
            ),
            SizedBox(height: 10,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               userOrders(context, 'assets/images/product images/vivo.jpg'),
               userOrders(context, 'assets/images/product images/asusLaptop.jpg')],
            ),
          ],
        ),
      ),
    );
  }
}
