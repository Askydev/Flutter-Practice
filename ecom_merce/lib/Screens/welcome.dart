import 'package:flutter/material.dart';

class WelCome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("images/welcome.png"))
                ),
              ),
              Text("Welcome"),
            ],
          ),
        ),
      ),
    );
  }
}
