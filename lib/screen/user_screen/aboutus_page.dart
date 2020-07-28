import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class AboutusPage extends StatelessWidget {
  static String id = 'AboutusPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(child: Text('About Us',)),
      ),
    );
  }
}
