import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  Widget _buildFeaturedProducts({String name, double price, String image}){
    return Card(
      child: Container(
        height: 200,
        width: 176,
        color: Colors.transparent,
        child: Column(
          children: [
            Container(
              height: 160,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/$image"),),
              ),
            ),
            Text("\$ $price", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black54),),
            Text(name, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 2.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            color: Colors.black,
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height:50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured Products",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),

                      Text(
                        "See All",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _buildFeaturedProducts(image: "mid.png", price: 30.0, name: "Black Elegance"),
                        _buildFeaturedProducts(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2")
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
