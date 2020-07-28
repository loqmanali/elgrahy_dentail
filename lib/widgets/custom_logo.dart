import 'package:flutter/material.dart';



class CustomLogo extends StatelessWidget {

  final Image img;
  final String text;

  CustomLogo({@required this.text,@required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            img,
            Positioned(
              bottom: 0,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}