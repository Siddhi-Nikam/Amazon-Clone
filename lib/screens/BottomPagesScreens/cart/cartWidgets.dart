import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../blocs/productCounterBloc/counterBloc.dart';
import '../../../blocs/productCounterBloc/counterEvent.dart';
import '../../../blocs/productCounterBloc/counterState.dart';

Widget subTotal() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      spacing: 10,
      children: [
        Text('SubTotal', style: TextStyle(fontSize: 18)),

        Text(
          'Rs. 214,990.00',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget emiText() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      spacing: 5,
      children: [
        Text(
          'EMI Available',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Details',
          style: TextStyle(
            fontSize: 14,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget orderEligible() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Icon(Icons.verified_rounded, color: Colors.green),
        SizedBox(width: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Order is eligible for FREE Delivery',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text('Select this option to checkout. '),
                Text('Details', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget proceedToBuyBtn() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Proceed To Buy (1 item)',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}

Widget seperatorline() {
  return Container(height: 1, color: Colors.grey.shade200);
}

Widget productseperatorline() {
  return Container(height: 1.5, color: Colors.grey.shade500);
}

Widget productCard() {
  
  return BlocProvider(
    create: (_) => CounterBloc(),
    child: Builder(
      builder: (context) {
        final counterBloc = context.read<CounterBloc>();

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/product images/asusLaptop.jpg',
                      height: 140,
                      width: 140,
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => counterBloc.add(IncrementCounter()),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade300,
                            ),
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: BlocBuilder<CounterBloc, CounterState>(
                              builder: (context, state) {
                                return Text(
                                  '${state.counter}',
                                  style: TextStyle(fontSize: 16),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => counterBloc.add(DecrementCounter()),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade300,
                            ),
                            child: Icon(Icons.remove),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ASUS Vivobook Go 14, AMD\nRyzen 5 7520U,Thin & Light...',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      '₹40,990',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Eligible for Free Shipping',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Text(
                      'InStock',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '7 Days Replacement',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 10,
                      children: [
                        productCartBtns('Delete'),
                        productCartBtns('Save for later'),
                      ],
                    ),
                    SizedBox(height: 10),
                    productCartBtns('See more like this'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget productCartBtns(String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(child: Text(text, style: TextStyle(fontSize: 14))),
    ),
  );
}

Widget paymentDeliveryRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Image.asset('assets/images/cart_screen_icons/secure_payment.png'),
          Text(
            'Secure Payment',
            style: TextStyle(color: Colors.blue, fontSize: 14),
          ),
        ],
      ),
      Column(
        children: [
          Image.asset('assets/images/cart_screen_icons/delivered_alt.png'),
          Text(
            'Amazon Delivered',
            style: TextStyle(color: Colors.blue, fontSize: 14),
          ),
        ],
      ),
    ],
  );
}

Widget paylaterRow() {
  return Container(
     height: 80,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 250, 215, 215),
      border: Border(
        top: BorderSide(
          color: Colors.grey.shade600,
          width: 1
        )
      )
  
    ),
   
    child: Row(
      spacing: 20,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/images/cart_screen_icons/pay_calender.png',
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Amazon Pay Later | Get Instant credit up to \n₹60,000'),
            Row(
              children: [
                Text(
                  'Activate & get rewards of',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  ' ₹600',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
