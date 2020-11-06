import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
  final GlobalKey<ScaffoldState> _key=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed:(){
            _key.currentState.openDrawer();
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
          IconButton(icon: Icon(Icons.send), onPressed: (){}),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              // color: Colors.blue,
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
                        // SizedBox(
                        //   width: 25,
                        // ),
                        _buildFeaturedProducts(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2")
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}