import 'package:flutter/material.dart';

Widget userappbar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xff84D8E3), Color(0xffA6E6CE)],
      ),
    ),
    height: MediaQuery.sizeOf(context).height / 9.5,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/amazon_black_logo.png',
          height: 50,
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            spacing: 15,
            children: [
              Icon(Icons.notifications_outlined, size: 30),
              Icon(Icons.search, size: 30),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget usernameContainer() {
  return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromARGB(255, 151, 237, 249), Color(0xffCBF1E2)],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Text('Hello,', style: TextStyle(fontSize: 20)),
          SizedBox(width: 10),
          Text(
            'User',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget blurContainer() {
  return Stack(
    children: [
      Container(
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 192, 239, 245),
              Color.fromARGB(255, 232, 249, 242),
            ],
          ),
        ),
      ),

      Column(
        spacing: 15,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(child: userButton('Your Orders'), onTap: () {},), 
              GestureDetector(child: userButton('Buy Again'), onTap: (){},)],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(child: userButton('Log Out'), onTap: (){},),
              GestureDetector(child: userButton('Wish List'), onTap: (){},)],
          ),
        ],
      ),
    ],
  );
}

Widget userButton(String text) {
  return Container(
    width: 180,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      color: Colors.white,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ),
  );
}

Widget userOrders(BuildContext context, String productPath) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 200,
      width: MediaQuery.sizeOf(context).width / 2.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(productPath),
      ),
    ),
  );
}

Widget userOrderrow(String leading, String trailing) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          trailing,
          style: TextStyle(
            fontSize: 12,
            color: Colors.cyan[800],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget seperatorContainer() {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Container(
      height: 5,
      width: double.infinity,
      color: Colors.grey.shade300,
    ),
  );
}
