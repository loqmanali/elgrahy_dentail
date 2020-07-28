import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class TestimonialsPage extends StatelessWidget {
  static String id = 'TestimonialsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Testimonial',
          ),
        ),
      ),
    );
  }
}
