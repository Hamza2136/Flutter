import "dart:math";

import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurpleAccent,
        child: Center(
            child: Text(
          luckynumber(),
          textDirection: TextDirection.ltr,
          style: const TextStyle(fontSize: 40.0, color: Colors.white),
        )));
  }

  String luckynumber() {
    var rand = Random();
    int lnum = rand.nextInt(10);
    return "Lucky Number is $lnum";
  }
}
