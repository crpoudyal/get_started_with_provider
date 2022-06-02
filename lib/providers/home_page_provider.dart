import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEven;
  String? msg = "";
  void checkOddEven(int number) {
    if (number % 2 == 0) {
      isEven = true;
      msg = "It is Even Number";
      notifyListeners();
    } else {
      isEven = false;
      msg = "It is Odd Number";
      notifyListeners();
    }
  }
}
