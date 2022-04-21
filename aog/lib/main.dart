import 'package:aog/widgets/calcular_widget.dart';
import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/logo_widget.dart';
import 'package:aog/widgets/success_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qual compensa mais?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _gasCtrl = TextEditingController();
    var _alcoolCtrl = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          const Logo(),
          Success(result: "abaste com X", reset: () {}),
          Input(label: "Gasolina", ctrl: _gasCtrl),
          Input(label: "Etanol", ctrl: _alcoolCtrl),
          LoadingButton(
            titleButton: "Calcular",
            busy: false,
            invert: true,
            func: () {},
          ),
        ],
      ),
    );
  }
}
