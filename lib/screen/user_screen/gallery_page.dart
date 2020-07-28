import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  static String id = 'GalleryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Gallery',
          ),
        ),
      ),
    );
  }
}
