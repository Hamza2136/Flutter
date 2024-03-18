import "package:firstapp/app_screens/listview.dart";
import "package:flutter/material.dart";
//import "package:flutter/widgets.dart";
//import "./app_screens/home.dart";

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI with Widget",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Long List View"),
            backgroundColor: const Color.fromARGB(255, 36, 92, 137),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("FAB Clicked");
            },
            tooltip: 'Add new item',
            child: const Icon(Icons.add),
          ),
          body: const LView()),
    );
  }
}
