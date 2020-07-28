import 'package:dental/constant.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  static String id = 'AdminPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'AddProduct');
            },
            child: Text('Add Product'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Edit Product'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Views Product'),
          )
        ],
      ),
    );
  }
}
