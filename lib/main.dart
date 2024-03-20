import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(
    title: "Example of Statefull widget",
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  const FavouriteCity({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FavouriteCity();
  }
}

class _FavouriteCity extends State<FavouriteCity> {
  String cityName = "";
  final _curcurrencies = ['Rupees', 'Dollars', 'Rayals', 'Pounds'];
  var selectedCurrency = 'Rupees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite City and currency"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
// Text Field Starts
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(onChanged: (String userinput) {
                setState(() {
                  cityName = userinput;
                });
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Your Favourite City is $cityName",
                style: const TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            ),

//Dropdown Button Starts
            DropdownButton<String>(
              items: _curcurrencies.map((String dropdownStringItem) {
                return DropdownMenuItem(
                    value: dropdownStringItem, child: Text(dropdownStringItem));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value.toString();
                });
              },
              value: selectedCurrency,
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Your Currency is $selectedCurrency",
                style: const TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
