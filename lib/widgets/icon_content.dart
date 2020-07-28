import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18, 
  fontWeight: FontWeight.bold,
  );



class IconContent extends StatelessWidget {
  final double height;
  final IconData icon;
  final String lable;

  IconContent(
      {@required this.height, @required this.icon, @required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: height * 0.01),
        Icon(
          icon,
          size: 40.0,
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          lable,
          style: labelTextStyle,
        )
      ],
    );
  }
}