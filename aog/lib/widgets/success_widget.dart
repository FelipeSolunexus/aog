import 'package:flutter/material.dart';

import 'calcular_widget.dart';

// ignore: must_be_immutable
class Success extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  late var result;
  late Function reset;

  Success({Key? key, required this.result, required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Text(
            result,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          LoadingButton(
            titleButton: "Calcular Novamente",
            busy: false,
            invert: true,
            func: reset,
          ),
        ],
      ),
    );
  }
}
