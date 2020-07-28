import 'package:flutter/cupertino.dart';

class AmdinMode extends ChangeNotifier {
  bool isAdmin = false;
  changeIsAdmin(bool value) {
    isAdmin = value;
    notifyListeners();
  }
}