import 'package:ecom_merce/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:ecom_merce/Widgets/singleproduct.dart';
class ListProduct extends StatelessWidget {
  final String name;
  ListProduct({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 2.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
              builder: (ctx)=>Homepage()
            ),
            );
          },
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
                            name,
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
                  height: 650,
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    children: [
                    SingleProduct(image: "mid.png", price: 12.0, name: "Black Elegance"),
                    SingleProduct(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2"),
                    SingleProduct(image: "mobile_cover.gif", price: 9.0, name: "Marble Stone(iphone-6/6s)"),
                    SingleProduct(image: "sandisk_ssd.png", price: 25.0, name: "Samsung EVO +"),
                    SingleProduct(image: "headphone.png", price: 30.0, name: "Rockerzz 710"),
                    SingleProduct(image: "pendrive.png", price: 7.0, name: "HP 32GB"),
                      SingleProduct(image: "iphoneX.png", price: 975.0, name: "Iphone X 128GB"),
                      SingleProduct(image: "teddy.png", price: 11.0, name: "SomeOne Teddy 6 ft'")
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
