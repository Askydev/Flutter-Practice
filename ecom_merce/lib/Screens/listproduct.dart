import 'package:flutter/material.dart';
import 'package:ecom_merce/Widgets/singleproduct.dart';
class ListProduct extends StatelessWidget {

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
        child: ListView(
          children: [
            Column(
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
                Container(
                  height: 700,
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    children: [
                    SingleProduct(image: "mid.png", price: 30.0, name: "Black Elegance"),
                    SingleProduct(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2"),
                    SingleProduct(image: "mid.png", price: 30.0, name: "Black Elegance"),
                    SingleProduct(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2"),
                    SingleProduct(image: "mid.png", price: 30.0, name: "Black Elegance"),
                    SingleProduct(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2"),
                      SingleProduct(image: "mid.png", price: 30.0, name: "Black Elegance"),
                      SingleProduct(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2")
                  ],),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
