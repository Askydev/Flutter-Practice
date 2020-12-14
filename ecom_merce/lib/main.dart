import 'package:ecom_merce/Screens/cart.dart';
import 'package:ecom_merce/Screens/checkout.dart';
import 'package:ecom_merce/Screens/homepage.dart';
import 'package:ecom_merce/Screens/productdetail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecom_merce/Screens/sign.dart';
import 'package:ecom_merce/Screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ecom_merce/Screens/listproduct.dart';


void main(){
  runApp(Ecom());
}

class Ecom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
      // Once complete, show your application

          if (snapshot.hasError) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: CheckOut(),
            );
          }
      if (snapshot.connectionState == ConnectionState.done) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CheckOut(),
        );
      // ignore: missing_return, missing_return
      }
      // Otherwise, show something whilst waiting for initialization to complete
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CheckOut(),
            // ignore: missing_return, missing_return
          );
    });

  }
}

