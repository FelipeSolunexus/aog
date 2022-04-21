import 'package:flutter/material.dart';

class BtnCalcular extends StatelessWidget {
  var titleButton = "";

  BtnCalcular({Key? key, required this.titleButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(
          60,
        ),
      ),
      child: TextButton(
        child: Text(titleButton,
            style: const TextStyle(
                color: Colors.blue,
                fontFamily: "Big Shoulders Display",
                fontSize: 35)),
        onPressed: () {},
      ),
    );
  }
}
