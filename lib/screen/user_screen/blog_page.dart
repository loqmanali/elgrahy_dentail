import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  static String id = 'BlogPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
          title: Center(
        child: Text(
          'Blog',
        ),
      )),
    );
  }
}
