import 'package:flutter/material.dart';

class Emailwidget extends StatelessWidget {
  final FocusNode emailfocusNode = FocusNode();
  final TextEditingController email = TextEditingController();

  Emailwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          focusNode: emailfocusNode,
          controller: email,
          onChanged: (value) {},
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email',
            hintStyle: const TextStyle(
              color: Colors.blueGrey,
            ),
            prefixIcon: const Icon(
              Icons.email,
              color: Colors.orange,
            ),
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
              return 'Please enter a valid email. EX.name123@gmail.com';
            }
            return null;
          },
        ),
      ),
    );
  }
}
