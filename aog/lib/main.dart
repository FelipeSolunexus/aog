import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/logo_widget.dart';
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
        primarySwatch: Colors.deepPurple,
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
          Logo(),
          Input(label: "Gasolina", ctrl: _gasCtrl),
          Input(label: "Etanol", ctrl: _alcoolCtrl),
          Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                60,
              ),
            ),
            child: TextButton(
              child: const Text("calcular",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontFamily: "Big Shoulders Display",
                      fontSize: 35)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
