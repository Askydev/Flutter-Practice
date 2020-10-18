import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String name;
  final StringProperty col;
  MyButton({this.name, this.onPressed, this.col});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: double.infinity,
        child: RaisedButton(
          child: Text(
            name,
          ),
          color: Colors.lightGreenAccent,
          onPressed: onPressed,
        ));
  }
}
