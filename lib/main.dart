import 'package:flutter/material.dart';
import 'package:global_pay_deaf/paypal/makePayment.dart';
import 'package:global_pay_deaf/screens/transferPaypalPayment.dart';

import 'package:global_pay_deaf/welcome_page.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    home: WelcomePage(),

    // home: makePayment(),

    // home: ProfilePage1(),
    // home: HomeWidget(),
    // home: MyApp(),
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Image from assets"),
//         ),
//         body: Image.asset('assets/images/visa.png'), //   <--- image
//       ),
//     );
//   }
// }
