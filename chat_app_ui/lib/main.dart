import 'package:flutter/material.dart';
import 'package:chat_app_ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Robo-con",
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFfEF9EB),
      ),
      home: HomePage(),
    );
  }
}
