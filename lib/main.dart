import 'package:e_commerce_amezon_clone/screens/auth%20pages/loginscreen.dart';
import 'package:e_commerce_amezon_clone/screens/auth%20pages/registerscreen.dart';
import 'package:e_commerce_amezon_clone/screens/BottomNavBar/Bottomnav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/authBloc/auth_bloc.dart';
import 'blocs/authBloc/auth_event.dart';
import 'blocs/homBloc/homeBloc.dart';
import 'repos/auth_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthRepository _authRepository = AuthRepository();

  // @override
  // void initState() {
  //   super.initState();
  //   SplashScreen();
  //   Duration(seconds: 3);
  // }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthBloc(_authRepository)..add(AppStarted()),
          ),
          BlocProvider(create: (context) => BottomNavBloc()),
        ],
        child: MaterialApp(
          routes: {
            '/login': (context) => LoginScreen(),
            '/register': (context) => RegisterScreen(),
          },
          debugShowCheckedModeBanner: false,
          title: 'Amazon Clone',
          home: BottomNav(),
        ),
      ),
    );
  }
}
