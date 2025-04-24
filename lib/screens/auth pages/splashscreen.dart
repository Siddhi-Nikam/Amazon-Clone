import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/authBloc/auth_bloc.dart';
import '../../blocs/authBloc/auth_state.dart';
import '../BottomNavBar/Bottomnav.dart';
import 'adminscreen.dart';
import 'loginscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          if (state.isAdmin) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AdminScreen()));
          } else {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => BottomNav()));
          }
        } else if (state is Unauthenticated) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
        }
      },
      child: Scaffold(
        body: Center(
          child:Image.asset('assets/images/amazon_in.png')
          ),
      ),
    );
  }
}
