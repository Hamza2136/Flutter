import "app_screens old files/first_screen.dart";
import "package:flutter/material.dart";

void main() => runApp(const CALLED());

class CALLED extends StatelessWidget{
  const CALLED({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Lucky Number Finder",
        home: Scaffold(
            appBar: AppBar(title: const Text("Lucky Number Finder", style: TextStyle(color: Colors.white)), backgroundColor: Colors.deepPurple),
            body: const FirstScreen()
        )
    );
  }
}
