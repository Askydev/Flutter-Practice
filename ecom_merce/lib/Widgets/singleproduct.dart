import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  SingleProduct({this.name,this.image,this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 176,
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 160,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(fit:BoxFit.fill,image: AssetImage("images/$image"),),
                ),
              ),
            ),
            Text("\$ ${price.toString()}", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black54),),
            Text(name, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
