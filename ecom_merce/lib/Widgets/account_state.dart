import 'package:ecom_merce/Screens/login.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final String accname;
  final Function onTap;
  final String txt;
  Account({this.accname, this.onTap, this.txt});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(txt),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            accname,
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
