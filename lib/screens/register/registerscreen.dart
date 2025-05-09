import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../userRole pages/adminhome.dart';
import '../../userRole pages/userhome.dart';
import '../login/loginBloc/loginBloc.dart';
import '../login/loginBloc/loginEvent.dart';
import '../login/loginBloc/loginState.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String selectedRole = 'user';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              if (state.role == 'admin') {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Adminhome()));
              } else {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Userhome()));
              }
            } else if (state is AuthFailure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: (val) => val!.isEmpty ? "Enter email" : null,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: "Password"),
                    validator: (val) => val!.length < 6 ? "Password too short" : null,
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: selectedRole,
                    items: ['user', 'admin'].map((role) {
                      return DropdownMenuItem(value: role, child: Text(role.toUpperCase()));
                    }).toList(),
                    onChanged: (val) => setState(() => selectedRole = val!),
                    decoration: const InputDecoration(labelText: "Role"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                          RegisterEvent(emailController.text.trim(), passwordController.text.trim(), selectedRole),
                        );
                      }
                    },
                    child: const Text("Register"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Already have an account? Login"),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
