import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited_widget.dart';
import 'package:inherited_widget/model.dart';
import 'package:inherited_widget/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Example of InheritedWidget'),
    );
  }
}

/// должен быть StatefulWidget
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // TODO фактическое хранилище данных
  MyModel model = MyModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // TODO наследование от InheritedWidget
        child: MyInheritedProvider(
            // TODO передача данных в InheritedWidget
            model: model,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                MyText(),//TODO Чтение
                SizedBox(height: 24,),
                MyButton(),//TODO Запись

              ],
            )
        )
      ),
    );
  }
}
