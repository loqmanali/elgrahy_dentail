import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  static String id = 'ServicesPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Services',
          ),
        ),
      ),
    );
  }
}
