import 'package:flutter/cupertino.dart';

class MyModel extends ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }
}