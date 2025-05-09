import 'package:flutter/material.dart';

Widget seperator() {
  return Container(
    height: 1,
    color: Colors.grey.shade300,
    width: double.infinity,
  );
}

Widget visitStore() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      'Visit the Store',
      style: TextStyle(
        fontSize: 14,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget productName(String productName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      productName,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget ratings(String rate) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      spacing: 5,
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text(rate, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}

Widget price(String price) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      '₹ $price',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

Widget emiTextLine() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 5,
          children: [
            Text('EMI', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('from ₹ 1,905.No Cost EMI available'),
            Text('EMI option', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
          ],
        ),
        Text('Inclusive of all taxes'),
      ],
    ),
  );
}

Widget totalprice(String totalprice) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      'Total :$totalprice',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
  );
}

Widget addressText() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          spacing: 10,
          children: [
            Text(
              'FREE delivery',
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
            Text(
              'Expected Delivery Date',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 2,),
        Row(
          children: [
            Icon(Icons.location_on_outlined),
            Text(
              'Delvery to User - Address',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget featureDetails(String details) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features / Details',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          details,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey.shade700),
        ),
      ],
    ),
  );
}

Widget customerRatings(String rating) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer ratings',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          spacing: 10,
          children: [
            Icon(Icons.star, color: Colors.amber),
            Text('$rating out of 5', style: TextStyle(fontSize: 14)),
          ],
        ),
        Text('3 Global rating', style: TextStyle(color: Colors.grey)),
      ],
    ),
  );
}
