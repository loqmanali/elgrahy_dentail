import 'package:dental/constant.dart';
import 'package:dental/screen/login_screen.dart';
import 'package:dental/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'SingupScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/img/intro.png'),),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        '',

                      )
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
                  height: height * 0.1,
                ),
                CustomTextField(
                  hint: 'Enter Your Name',
                  icon: Icons.perm_identity,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomTextField(
                  hint: 'Enter Your Email',
                  icon: Icons.email,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomTextField(
                  hint: 'Enter Your Password',
                  icon: Icons.lock,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.indigo,
                      onPressed: () {
                        if(_globalKey.currentState.validate()){

                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Do you have an account? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      child: Text(
                        'LogIn',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
