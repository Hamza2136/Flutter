import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Interest Calculator',
      debugShowCheckedModeBanner: false,
      home: const InterestCalculator(),
      theme: ThemeData(
        brightness: Brightness.dark,
      )));
}

class InterestCalculator extends StatefulWidget {
  const InterestCalculator({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InterestCalculatorState();
  }
}

class _InterestCalculatorState extends State<InterestCalculator> {
  final _currencies = ['Rupees', 'Dollars', 'Rayals', 'Pounds'];
  String selectedCurrency = 'Rupees';
  String displayResult = '';
  TextEditingController principalController = TextEditingController();
  TextEditingController interestController = TextEditingController();
  TextEditingController termController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Interest Calculator'),
          backgroundColor: const Color.fromRGBO(3, 34, 126, 0.8),
        ),
        body: Form(
          // color: const Color.fromRGBO(32, 32, 32, 1.0),
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              // Image
              const BackgroundImage(),

              // Principal Text Field
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: principalController,
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Please enter the Principal amount";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    label: Text("Principal"),
                    border: OutlineInputBorder(),
                    hintText: 'Enter the Principal Amount',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              // Interest Rate Text Field
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: interestController,
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Please enter the Interest Rate";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Rate of Interest"),
                    hintText: 'Enter the Rate of Interest',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              // Row for Term TextField and Currency Dropdown
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                      child: TextFormField(
                        controller: termController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "Please enter the Term";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text("Term"),
                          border: OutlineInputBorder(),
                          hintText: 'Enter the years',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                      child: DropdownButton<String>(
                        items: _currencies.map((String dropdownStringItem) {
                          return DropdownMenuItem(
                            value: dropdownStringItem,
                            child: Text(
                              dropdownStringItem,
                              style: const TextStyle(color: Colors.white),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCurrency = value.toString();
                          });
                        },
                        value: selectedCurrency,
                        dropdownColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),

              // Row for Calculate and Reset Buttons
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 238, 29, 14),
                          foregroundColor:
                              const Color.fromARGB(255, 227, 221, 221),
                        ),
                        child: const Text(
                          "Calculate",
                          style: TextStyle(fontSize: 15.0),
                        ),
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState?.validate() ?? false) {
                              _calculate();
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor:
                              const Color.fromARGB(255, 227, 221, 221),
                        ),
                        child: const Text(
                          "Reset",
                          style: TextStyle(fontSize: 15.0),
                        ),
                        onPressed: () {
                          clear();
                        },
                      ),
                    ),
                  )
                ],
              ),

              // Display Result Text
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(displayResult,
                    style: const TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ));
  }

  // bool _isValidInput() {
  //   return principalController.text.isNotEmpty &&
  //       double.tryParse(principalController.text) != null &&
  //       interestController.text.isNotEmpty &&
  //       double.tryParse(interestController.text) != null &&
  //       termController.text.isNotEmpty &&
  //       double.tryParse(termController.text) != null;
  // }

  // void _calculate() {
  //   setState(() {
  //     if (_isValidInput()) {
  //       displayResult = _calculateResult();
  //     } else {
  //       displayResult = 'Invalid input. Please enter valid numbers.';
  //     }
  //   });
  // }

  void _calculate() {
    setState(() {
      displayResult = _calculateResult();
    });
  }

  String _calculateResult() {
    double principal = double.parse(principalController.text);
    double interestRate = double.parse(interestController.text);
    double term = double.parse(termController.text);
    double totalAmount = principal + (principal * interestRate * term) / 100;
    String result =
        "After $term years your amount will be $totalAmount $selectedCurrency";
    return result;
  }

  void clear() {
    principalController.clear();
    interestController.clear();
    termController.clear();
    setState(() {
      displayResult = '';
      selectedCurrency = _currencies[0];
    });
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    const AssetImage img = AssetImage('images/first.png');
    const Image image = Image(image: img, width: 200, height: 200);
    return const SizedBox(child: image);
  }
}
