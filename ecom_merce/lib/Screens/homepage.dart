import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom_merce/Screens/listproduct.dart';
import 'package:ecom_merce/Screens/productdetail.dart';
import 'package:ecom_merce/Widgets/singleproduct.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../model/product.dart';


class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

Product mendata;

class _HomepageState extends State<Homepage> {
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

   bool homeColor=false;

   bool cartColor=false;

   bool aboutColor=false;

   bool contactUsColor=false;

  final GlobalKey<ScaffoldState> _key=GlobalKey<ScaffoldState>();

  Widget _buildDrawer(){
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Dev Sharma",style: TextStyle(color: Colors.black),),
              decoration: BoxDecoration(color: Color(0xfff2f2f2),),
              currentAccountPicture: CircleAvatar(radius:20,backgroundImage: AssetImage("images/profile.jpg"),),
              accountEmail: Text("dx@gmail.com",style: TextStyle(color: Colors.black),)
          ),
          ListTile(
            selected: homeColor,
            onTap: (){
              setState(() {
                homeColor=true;
                contactUsColor=false;
                cartColor=false;
                aboutColor=false;
              });
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            selected: cartColor,
            onTap: (){
              setState(() {
                cartColor=true;
                homeColor=false;
                contactUsColor=false;
                aboutColor=false;
              });
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          ListTile(
            selected: aboutColor,
            onTap: (){
              setState(() {
                aboutColor=true;
                homeColor=false;
                contactUsColor=false;
                cartColor=false;
              });
            },
            leading: Icon(Icons.info),
            title: Text("About"),
          ),
          ListTile(
            selected: contactUsColor,
            onTap: (){
              setState(() {
                contactUsColor=true;
                homeColor=false;
                cartColor=false;
                aboutColor=false;
              });
            },
            leading: Icon(Icons.phone),
            title: Text("Contact Us"),
          ),
          ListTile(
            onTap: (){
              FirebaseAuth.instance.signOut();
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }

  Widget _buildCarousel(){
    return Container(
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
    );
  }

  Widget _buildCategorie(){
    return Column(
      children: [
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
    );
  }

  Widget _buildFeatured(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Featured", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(
                  builder: (ctx)=>ListProduct(name: "Featured",
                  ),
                ),
                );
              },
              child: Text("View more", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (ctx)=>DetailScreen(
                        image: "mid.png",
                        price: 30.0,
                        name: "Black Elegance"
                    ),
                  ),
                  );
                },
                child: SingleProduct(
                    image: "mid.png",
                    price: 30.0,
                    name: "Black Elegance")),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (ctx)=>DetailScreen(
                        image: "galaxy.png",
                        price: 120.0,
                        name: "Galaxy Gear-2"
                    ),
                  ),
                  );
                },
                child: SingleProduct(
                    image: "galaxy.png",
                    price: 120.0,
                    name: "Galaxy Gear-2")
            )
          ],
        ),
      ],
    );
  }

  Widget _buildNewArrivals(){
    return Column(
      children: [
        Container(
          height:50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arrivals", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(
                        builder: (ctx)=>ListProduct(name: "New Arrivals",
                        ),
                      ),
                      );
                    },
                    child: Text("View more", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (ctx)=>DetailScreen(
                                image: "gpixel-4a.png",
                                price: 400.0,
                                name: "Google Pixel 4A"
                            ),
                          ),
                          );
                        },
                        child: SingleProduct(
                            image: "gpixel-4a.png",
                            price: 400.0,
                            name: "Google Pixel 4A")
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx)=>DetailScreen(
                              image: "airdopes.png",
                              price: 60.0,
                              name: "Boat AirDopes 511"
                          ),
                        ),
                        );
                      },
                      child: SingleProduct(
                          image: "airdopes.png",
                          price: 60.0,
                          name: "Boat AirDopes 511"
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: _buildDrawer(),
      // Main---------------------------
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.pink,
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
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("products").doc("UeiPjRWOwTBa6dbSTwn8").collection('featureproduct').get(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          mendata=Product(image: snapshot.data.documents[1]["image"],name: snapshot.data.documents[1]["name"],price: snapshot.data.documents[1]["price"]);
          print(mendata.name);
          return Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCarousel(),
                      _buildCategorie(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildFeatured(),
                      _buildNewArrivals(),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}