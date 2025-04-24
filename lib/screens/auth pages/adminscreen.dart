// admin_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/authBloc/auth_bloc.dart';
import '../../blocs/authBloc/auth_event.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
        actions: [
          IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(LoggedOut());
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: Center(child: Text("Welcome Admin")),
    );
  }
}
