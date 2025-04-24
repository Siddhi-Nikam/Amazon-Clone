import 'package:e_commerce_amezon_clone/widgets/passwordWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../blocs/authBloc/auth_bloc.dart';
import '../../blocs/authBloc/auth_event.dart';
import '../../repos/auth_repo.dart';
import '../../widgets/emailWidget.dart';
import '../../widgets/registerbtnWidget.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepo = RepositoryProvider.of<AuthRepository>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Image.asset('assets/images/amazon_in.png'),
              ),
            ),

            SizedBox(height: 50.0),

            Text(
              'Login',
              style: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 30),
            Emailwidget(),
            Passwordwidget(),
            SizedBox(height: 40),

            GestureDetector(
              onTap: () async {
                await authRepo.signIn(email.text, password.text);
                context.read<AuthBloc>().add(LoggedIn());
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),

            RegisterButtonWidget(context),
          ],
        ),
      ),
    );
  }
}
