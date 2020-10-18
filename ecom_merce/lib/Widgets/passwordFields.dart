import 'package:flutter/material.dart';

class PassW extends StatelessWidget {
  final bool obsText;
  final Function validator;
  final String htxt;
  final Function onTap;

  PassW({this.obsText, this.validator, this.htxt, this.onTap});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsText,
      validator: validator,
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
