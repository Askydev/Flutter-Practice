import 'package:flutter/material.dart';
import 'package:ecom_merce/Screens/sign.dart';

void main(){
  runApp(Ecom());
}

class Ecom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );

  }
}
