import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class ContactusPage extends StatelessWidget {
  static String id = 'ContactusPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contact Us',
          ),
        ),
      ),
    );
  }
}
