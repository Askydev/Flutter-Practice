import 'package:dx/homepage.dart';
import 'package:flutter/material.dart';

const Color mclr = Colors.red;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cocktail App",
      theme: ThemeData(
        primarySwatch: mclr,

      ),
      home: HomePage(),
    );
  }
}
