import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited_widget.dart';

// TODO :: TEXT - Чтение с InheritedWidget
class MyText extends StatefulWidget {
  const MyText({Key? key,
    // required this.val,
  }) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  int _value = -1;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    final model = MyInheritedProvider.of(context).model;
    model.addListener(() {
      _value = model.value;
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final value = MyInheritedProvider.of(context).model.value;
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(12),
      child: Text('$_value', style: Theme.of(context).textTheme.headline1,),
    );
  }
}

// TODO :: BUTTON - Запись в InheritedWidget
class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    MyInheritedProvider.of(context).model.increment();
    print(': TAP : ${MyInheritedProvider.of(context).model.value}');
    // context.dependOnInheritedWidgetOfExactType<MyInheritedProvider>()?.model++;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _incrementCounter(context),
        child: Container(
          padding: const EdgeInsets.all(24),
          color: Colors.deepOrange,
          child: Text('Жми', style: Theme.of(context).textTheme.headline3,),
        ));
  }
}
