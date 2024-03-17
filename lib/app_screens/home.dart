import "package:flutter/material.dart";
//import "package:flutter/widgets.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.only(left: 10.0, top: 30.0),
          alignment: Alignment.center,
          color: Colors.purple,
          child: const Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Airline",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Destination",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "1. PIA",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Lahore to Karachi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "2. ITHAD",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Saudia to Karachi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              FlightImageAssest(),
              FlightBookButton(),
            ],
          )),
    );
  }
}

class FlightImageAssest extends StatelessWidget {
  const FlightImageAssest({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('images/flight1.jpeg');
    Image image = Image(image: assetImage);
    return SizedBox(
      width: 250.0,
      height: 250.0,
      child: image,
    );
  }
}

// class FlightBookButton extends StatelessWidget {
//   const FlightBookButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300.0,
//       height: 50.0,
//       child: ElevatedButton(
//         child: const Text("Book the Flight",
//             style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w700,
//                 // color: Colors.white,
//                 fontSize: 20.0)),
//         onPressed: () {
//           bookflight(context);
//         },
//       ),
//     );
//   }

//   void bookflight(BuildContext context) {
//     var alertDialog = const AlertDialog(
//       title: Text("Flight Booked Successfully"),
//       content: Text("Enjoy your Flight"),
//     );
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return alertDialog;
//         });
//   }
// }

class FlightBookButton extends StatelessWidget {
  const FlightBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 250.0,
      child: ElevatedButton(
        child: const Text(
          "Book the Flight",
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20.0,
              fontWeight: FontWeight.w700),
        ),
        onPressed: () => bookflight(context),
      ),
    );
  }

  void bookflight(context) {
    var alert = const AlertDialog(
      title: Text("Ticket Update"),
      content: Text("Your ticket is successfully booked"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
