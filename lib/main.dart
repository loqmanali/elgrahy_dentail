import 'package:dental/screen/login_screen.dart';
import 'package:dental/screen/signup_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(ElgrahyDentail());

class ElgrahyDentail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        SignupScreen.id : (context) => SignupScreen(),
      },
    );
  }
}
