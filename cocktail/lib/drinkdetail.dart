import 'package:flutter/material.dart';
import 'main.dart';
class DrinkDetail extends StatelessWidget {
  final drinks;

  const DrinkDetail({Key key, @required this.drinks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(drinks["strDrink"]),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            mclr,
            Colors.orange
          ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                  tag: drinks["idDrink"],
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage(
                        drinks["strDrinkThumb"]
                    ),
                  )
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  "ID:${drinks["idDrink"]} ",
                style: TextStyle(
                  color: Colors.black87
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  "${drinks["strDrink"]} ",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
                textScaleFactor: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}