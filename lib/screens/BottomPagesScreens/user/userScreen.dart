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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         userappbar(context),
         usernameContainer(),
         blurContainer(),
         SizedBox(height: 20,),
         userOrderrow(),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
           [
            userOrders(context,''),
            userOrders(context,''),
          ]
          )
        ],
      ),
    );
  }
}