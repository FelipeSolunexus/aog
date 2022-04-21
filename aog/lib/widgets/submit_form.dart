import 'package:aog/widgets/input.widget.dart';
import 'package:flutter/material.dart';

import 'calcular_widget.dart';

// ignore: must_be_immutable
class Submit extends StatelessWidget {
  var etanolControler = TextEditingController();
  var gasolinaControler = TextEditingController();
  var busy = false;
  Function submitFunc;

  Submit(
      {Key? key,
      required this.etanolControler,
      required this.gasolinaControler,
      required this.busy,
      required this.submitFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Gasolina",
            ctrl: gasolinaControler,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Etanol",
            ctrl: etanolControler,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        LoadingButton(
          titleButton: "Calcular",
          busy: busy,
          invert: false,
          func: submitFunc,
        ),
      ],
    );
  }
}
