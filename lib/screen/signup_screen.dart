import 'package:dental/constant.dart';
import 'package:dental/provider/model_hud.dart';
import 'package:dental/screen/login_screen.dart';
import 'package:dental/widgets/custom_logo.dart';
import 'package:dental/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:dental/services/auth.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'SingupScreen';
  String _email, _password;
  final _auth = Auth();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColor,
      body: ModalProgressHUD(
        inAsyncCall: Provider.of<ModelHud>(context).isLoading,
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              CustomLogo(
                img: Image(
                  image: AssetImage('assets/img/intro.png'),
                ),
                text: '',
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextField(
                onClick: (value) {},
                hint: 'Enter Your Name',
                icon: Icons.perm_identity,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextField(
                onClick: (value) {
                  _email = value.trim();
                },
                hint: 'Enter Your Email',
                icon: Icons.email,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextField(
                onClick: (value) {
                  _password = value.trim();
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
                      onPressed: () async {
                        final modelhud =
                            Provider.of<ModelHud>(context, listen: false);
                        modelhud.changeisLoading(true);
                        if (_globalKey.currentState.validate()) {
                          _globalKey.currentState.save();
                          Navigator.pushNamed(context, 'LoginScreen');
                          try {
                            final authResult =
                                await _auth.signUp(_email, _password);
                            modelhud.changeisLoading(false);
                          } on PlatformException catch (e) {
                            modelhud.changeisLoading(false);
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text(e.message)));
                          }
                        }
                        modelhud.changeisLoading(false);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
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
      ),
    );
  }
}
