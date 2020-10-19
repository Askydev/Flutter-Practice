import 'package:flutter/material.dart';

class PassW extends StatelessWidget {
  bool obsText;
  final Function validator;
  final String htxt;
  final Function onTap;
  final Function onChanged;

  PassW({this.onChanged,this.validator, this.htxt, this.onTap,this.obsText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsText,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: htxt,
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: Icon(
              obsText == true ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
          ),
          hintStyle: TextStyle(color: Colors.black)),
    );
  }
}
