import 'package:dental/constant.dart';
import 'package:dental/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  static String id = 'AddProduct';
  String _name, _price, _description, _category, _imageLocation;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      body: Form(
        key: _globalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextField(
                hint: 'Product Name',
                icon: null,
                onClick: (value) {
                  _name = value;
                }),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hint: 'Product Price',
                icon: null,
                onClick: (value) {
                  _price = value;
                }),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hint: 'Product Description',
                icon: null,
                onClick: (value) {
                  _description = value;
                }),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hint: 'Product Category',
                icon: null,
                onClick: (value) {
                  _category = value;
                }),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
                hint: 'Product Location',
                icon: null,
                onClick: (value) {
                  _imageLocation = value;
                }),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                if (_globalKey.currentState.validate()) {
                  _globalKey.currentState.save();
                }
              },
              child: Text('Add Product'),
            )
          ],
        ),
      ),
    );
  }
}
