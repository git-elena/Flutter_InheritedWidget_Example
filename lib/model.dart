import 'package:flutter/cupertino.dart';

// TODO Модель данных
/// должна быть от ChangeNotifier
/// чтобы менять значение в InheritedWidget
class MyModel extends ChangeNotifier {

  int value = 0;

  void increment() {
    value++;

    // TODO уведомить об изменении
    notifyListeners();
  }
}