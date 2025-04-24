import 'package:flutter/material.dart';

class Passwordwidget extends StatelessWidget {
  final FocusNode passwordfocusNode = FocusNode();
  final TextEditingController password = TextEditingController();

  Passwordwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          focusNode: passwordfocusNode,
          controller: password,
          obscureText: true,
          onChanged: (value) {},
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            hintStyle: const TextStyle(
              color: Colors.blueGrey,
            ),
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.orange,
            ),
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty || value.length < 4) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
      ),
    );
  }
}
