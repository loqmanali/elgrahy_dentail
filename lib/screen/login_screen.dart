import 'package:dental/constant.dart';
import 'package:dental/provider/admin_mode.dart';
import 'package:dental/provider/model_hud.dart';
import 'package:dental/screen/signup_screen.dart';
import 'package:dental/widgets/custom_logo.dart';
import 'package:dental/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:dental/services/auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  static String id = 'LoginScreen';
  String email, password;
  final _auth = Auth();
  bool isAdmin = false;
  final adminPassword = 'Admin12345';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ModalProgressHUD(
      inAsyncCall: Provider.of<ModelHud>(context).isLoading,
      child: Scaffold(
        backgroundColor: MainColor,
        body: Form(
          key: globalKey,
          child: ListView(
            children: <Widget>[
              CustomLogo(
                img: Image(
                  image: AssetImage('assets/img/intro.png'),
                ),
                text: '',
              ),
              SizedBox(
                height: height * 0.1,
              ),
              CustomTextField(
                onClick: (value) {
                  email = value.trim();
                },
                hint: 'Enter Your Email',
                icon: Icons.email,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextField(
                onClick: (value) {
                  password = value.trim();
                },
                hint: 'Enter Your Password',
                icon: Icons.lock,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Builder(
                  builder: (context) => FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: SecondColor,
                      onPressed: () {
                        _validate(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Provider.of<AmdinMode>(context, listen: false)
                              .changeIsAdmin(true);
                        },
                        child: Text(
                          'Admin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Provider.of<AmdinMode>(context).isAdmin
                                  ? MainColor
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Provider.of<AmdinMode>(context, listen: false)
                              .changeIsAdmin(false);
                        },
                        child: Text(
                          'User',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Provider.of<AmdinMode>(context).isAdmin
                                  ? Colors.white
                                  : MainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validate(BuildContext context) async {
    final modelhud = Provider.of<ModelHud>(context, listen: false);
    modelhud.changeisLoading(true);
    if (globalKey.currentState.validate()) {
      globalKey.currentState.save();
      if (Provider.of<AmdinMode>(context, listen: false).isAdmin) {
        if (password == adminPassword) {
          try {
            await _auth.signIn(email, password);
            Navigator.pushNamed(context, 'AdminPage');
          } catch (e) {
            modelhud.changeisLoading(false);
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text(e.message)));
          }
        } else {
          modelhud.changeisLoading(false);
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Wrong you are not Admin')));
        }
      } else {
        try {
          await _auth.signIn(email, password);
          Navigator.pushNamed(context, 'HomePage');
        } catch (e) {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
        }
      }
      modelhud.changeisLoading(false);
    }
  }
}
