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
          body: getListView()),
    );
  }
}

List<String> genratelistitems() {
  var items = List<String>.generate(1000, (index) => "Item $index");
  return items;
}

Widget getListView() {
  var listitem = genratelistitems();
  var listview = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: const Icon(Icons.arrow_right),
      title: Text(listitem[index]),
      onTap: () => debugPrint("${listitem[index]} was tapped"),
    );
  });
  return listview;
}
