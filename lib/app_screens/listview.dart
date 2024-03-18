import "package:flutter/material.dart";

class LView extends StatelessWidget {
  const LView({super.key});

  @override
  Widget build(BuildContext context) {
    return longlistview();
  }

// Simple List View..........
  Widget simplelistview() {
    var listview = ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.landscape),
          title: const Text("Landscape"),
          onTap: () => debugPrint("Landscape Tapped"),
        ),
        ListTile(
          leading: const Icon(Icons.landscape),
          title: const Text("Landscape"),
          onTap: () => debugPrint("Landscape Tapped"),
        ),
        const ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
        ),
        const ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
        )
      ],
    );
    return listview;
  }

  // Snack Bar.............
  void showSnackBar(BuildContext context, String item) {
    var snackBar = SnackBar(
      content: Text("$item is tapped"),
      action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            debugPrint("Undo is pressed for $item");
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Creating a List of 1000 Strings...........
  List<String> genratelistitems() {
    var items = List<String>.generate(1000, (index) => "Item $index");
    return items;
  }

  // Long List...........
  Widget longlistview() {
    var listitem = genratelistitems();
    var listview = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: const Icon(Icons.arrow_right),
        title: Text(listitem[index]),
        onTap: () {
          showSnackBar(context, listitem[index]);
        },
      );
    });
    return listview;
  }
}
