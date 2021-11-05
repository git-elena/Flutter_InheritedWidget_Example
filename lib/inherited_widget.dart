import 'package:flutter/material.dart';
import 'package:inherited_widget/model.dart';

class MyInheritedProvider extends InheritedWidget {
  final MyModel model;

  const MyInheritedProvider({
    Key? key,
    required Widget child,
    required this.model,
  }) : super(key: key, child: child);

  static MyInheritedProvider of(BuildContext context) {
    final MyInheritedProvider? result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedProvider>();
    assert(result != null, 'No MyInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyInheritedProvider old) {
    return model.value != old.model.value;
  }
}

