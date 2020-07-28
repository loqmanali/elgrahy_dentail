import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class ReachusPage extends StatelessWidget {
  static String id = 'ReachusPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Reach Us',
          ),
        ),
      ),
    );
  }
}
