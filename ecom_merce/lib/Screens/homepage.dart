import 'package:ecom_merce/Widgets/singleproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Homepage extends StatelessWidget {

  Widget _buildCategoryProduct({String image, int color}){
    return CircleAvatar(
      maxRadius: 37,
      backgroundColor: Color(color),
      child: Container(
        height: 55,
        child: Image(
          // color: Colors.white,
          image: AssetImage("images/$image"),
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

          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}),
          IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: (){}),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        child: Carousel(
                          // dotColor: Colors.white,
                          autoplay: true,
                          // dotSize: 5,
                          showIndicator: false,
                          images: [
                            AssetImage("images/sandisk_ssd.png"),
                            AssetImage("images/galaxy.png"),
                            AssetImage("images/gpixel-4a.png"),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Categories",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            Text("View more",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        child: Row(
                          children: [
                            _buildCategoryProduct(image:"dress.png", color: 0xff3ddd),
                            _buildCategoryProduct(image:"shirt.png", color: 0xff3cdd),
                            _buildCategoryProduct(image:"shoe.png", color: 0xff3ccd),
                            _buildCategoryProduct(image:"pants.png", color: 0xff3cdd),
                            _buildCategoryProduct(image:"galaxy.png", color: 0xff3cdd),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Featured Products", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            Text("View more", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            SingleProduct(image: "mid.png", price: 30.0, name: "Black Elegance"),
                            SingleProduct(image: "galaxy.png", price: 120.0, name: "Galaxy Gear-2")
                          ],
                        )
                      ],
                    ),
                  ],
                ),

                Container(
                  height:50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New Arrivals", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          Text("View more", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                            SingleProduct(image: "gpixel-4a.png", price: 400.0, name: "Google Pixel 4A"),
                            SingleProduct(image: "airdopes.png", price: 60.0, name: "Boat AirDopes 511")
                          ],
                        )
                      ],
                    ),
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