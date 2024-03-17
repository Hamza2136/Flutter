import "dart:math";

import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurpleAccent,
        child: Center(
            child: Text(
              LuckyNumber(),
              textDirection: TextDirection.ltr,
              style: const TextStyle(fontSize: 40.0, color: Colors.white),
            )
        )
    );
  }
  String LuckyNumber(){
    var rand = Random();
    int lucky_num = rand.nextInt(10);
    return "Lucky Number is ${lucky_num}";
  }
}
