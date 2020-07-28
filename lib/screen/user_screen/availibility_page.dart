import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class AvailibilityPage extends StatelessWidget {
  static String id = 'AvailibilityPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Text(
          'Availibility',
        ),
      ),
    );
  }
}
