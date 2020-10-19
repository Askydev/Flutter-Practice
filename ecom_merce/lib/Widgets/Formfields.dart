import 'package:flutter/material.dart';

class FormFtxt extends StatelessWidget {
  final Function validator;
  final String htxt;
  final Function onChanged;

  FormFtxt({this.onChanged,this.validator, this.htxt});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: htxt,
          hintStyle: TextStyle(color: Colors.black)),
    );
  }
}
