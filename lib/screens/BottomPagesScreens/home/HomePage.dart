import 'package:flutter/material.dart';
import 'homeWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 255, 233, 172),
            Color.fromARGB(255, 252, 223, 107),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // Let the gradient show through
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              Homeaddress(),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: HomeCategories(context),
              ),

              Image.asset(
                'assets/images/homebanner.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              bottomOffers(context),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Deal of the Day',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5.0),
             dealoftheday()
            ],
          ),
        ),
      ),
    );
  }
}
