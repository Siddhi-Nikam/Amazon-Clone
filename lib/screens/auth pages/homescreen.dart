// home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/authBloc/auth_bloc.dart';
import '../../blocs/authBloc/auth_event.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Home"),
        actions: [
          IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(LoggedOut());
                Navigator.pushNamedAndRemoveUntil(context, '/login', (Route)=>false);
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: Center(child: Text("Welcome User")),
    );
  }
}
