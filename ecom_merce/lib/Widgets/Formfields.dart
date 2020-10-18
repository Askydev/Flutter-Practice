import 'package:flutter/material.dart';

class FormFtxt extends StatelessWidget {
  final Function validator;
  final String htxt;

  FormFtxt({this.validator, this.htxt});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: htxt,
          hintStyle: TextStyle(color: Colors.black)),
    );
  }
}
