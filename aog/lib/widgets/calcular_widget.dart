import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  late var titleButton;
  var busy = false;
  var invert = false;
  late Function func;

  LoadingButton(
      {Key? key,
      required this.titleButton,
      required this.busy,
      required this.invert,
      required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Colors.white.withOpacity(0.8)
                  : Colors.deepPurple.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                60,
              ),
            ),
            child: TextButton(
              child: Text(titleButton,
                  style: TextStyle(
                      color: invert ? Colors.blue : Colors.white,
                      fontFamily: "Big Shoulders Display",
                      fontSize: 35)),
              onPressed: func(),
            ),
          );
  }
}
