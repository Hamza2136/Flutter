import "package:flutter/material.dart";

class LView extends StatelessWidget {
  const LView({super.key});

  @override
  Widget build(BuildContext context) {
    return getListView();
  }

  Widget getListView() {
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
}
