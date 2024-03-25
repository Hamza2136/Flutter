// // Padding(
// //               padding: const EdgeInsets.all(20.0),
// //               child: TextField(onSubmitted: (String userinput) {
// //                 setState(() {
// //                   interestRate = double.parse(userinput);
// //                 });
// //               }),
// //             ),
// //             Column(
// //               children: [
// // //term Text Field Starts
// //                 Row(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: TextField(onSubmitted: (String userinput) {
// //                         setState(() {
// //                           term = double.parse(userinput);
// //                         });
// //                       }),
// //                     ),
// // //currency Dropdown Starts
                    // DropdownButton<String>(
                    //   items: _curcurrencies.map((String dropdownStringItem) {
                    //     return DropdownMenuItem(
                    //         value: dropdownStringItem,
                    //         child: Text(dropdownStringItem));
                    //   }).toList(),
                    //   onChanged: (value) {
                    //     setState(() {
                    //       selectedCurrency = value.toString();
                    //     });
                    //   },
                    //   value: selectedCurrency,
                    // ),

// //                   ],
// //                 )
// //               ],
// //             )







// import "package:flutter/material.dart";

// void main() {
//   runApp(const MaterialApp(
//     title: "Interest Calculator",
//     debugShowCheckedModeBanner: false,
//     home: InterestCalculator(),
//   ));
// }

// class InterestCalculator extends StatefulWidget {
//   const InterestCalculator({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _InterestCalculator();
//   }
// }

// class _InterestCalculator extends State<InterestCalculator> {
//   int principal = 0;
//   double interestRate = 0;
//   double term = 0;
//   final _curcurrencies = ['Rupees', 'Dollars', 'Rayals', 'Pounds'];
//   var selectedCurrency = 'Rupees';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Simple Interest Calculator"),
//         backgroundColor: const Color.fromRGBO(3, 34, 126, 0.8),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             // image
//             const BackgroundImage(),
// //Principal Text Field Starts
//             Padding(
//               padding:
//                   const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
//               child: TextField(
//                 onSubmitted: (String userinput) {
//                   setState(() {
//                     principal = int.parse(userinput);
//                   });
//                 },
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Profit',
//                 ),
//               ),
//             ),
// //Interest Rate Text Field Starts
//             Padding(
//               padding:
//                   const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
//               child: TextField(
//                 onSubmitted: (String userinput) {
//                   setState(() {
//                     interestRate = double.parse(userinput);
//                   });
//                 },
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Interest Rate',
//                 ),
//               ),
//             ),
//             //Term Text Field Starts
//             Row(
//               children: [
//                 Expanded(
//                     child: TextField(
//                   onSubmitted: (String userinput) {
//                     setState(() {
//                       interestRate = double.parse(userinput);
//                     });
//                   },
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Interest Rate',
//                   ),
//                 ))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BackgroundImage extends StatelessWidget {
//   const BackgroundImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     AssetImage img = const AssetImage("images/first.png");
//     Image image = Image(image: img);
//     return SizedBox(height: 150, width: 200, child: image);
//   }
// }
