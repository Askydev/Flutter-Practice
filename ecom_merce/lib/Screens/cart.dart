import 'package:ecom_merce/Screens/checkout.dart';
import 'package:ecom_merce/Screens/homepage.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatefulWidget {

  final double price;
  final String name;
  final String image;

  CartScreen({this.name,this.price,this.image});

  @override
  _CartScreenState createState() => _CartScreenState();
}

final TextStyle mystyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
);

class _CartScreenState extends State<CartScreen> {
  int count=1;

  Widget _buildCartProduct(){
    return Container(
      height: 180,
      width: double.infinity,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/${widget.image}"),
                      )
                  ),
                ),
                Container(
                  height: 130,
                  width: 260,
                  child: ListTile(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name),
                        Text("Electronics"),
                        Text("\$ ${widget.price.toString()}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 110,
                          color: Colors.black12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: Icon(Icons.remove),
                                onTap: (){
                                  setState(() {
                                    if(count>1){
                                      count--;
                                    }
                                  }
                                  );
                                },
                              ),
                              Text(
                                  count.toString(),
                                  style: TextStyle(
                                      fontSize: 18
                                  )
                              ),
                              GestureDetector(
                                child: Icon(Icons.add),
                                onTap: (){
                                  count++;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 65,
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(bottom: 10),
        child: RaisedButton(
          color: Colors.amber,
          child: Text("Continue",style: TextStyle(color: Colors.black,fontSize: 19),),
          onPressed: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx)=>CheckOut(
                name: widget.name,
                image: widget.image,
                price: widget.price,
            ),
            ),);
          },
        ),
      ),

      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart",style: mystyle,),
        backgroundColor: Colors.pink,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Homepage(),),);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ), onPressed: (){},
          ),
        ],
      ),

      body: ListView(
        children: [
          _buildCartProduct(),
          _buildCartProduct(),
          _buildCartProduct(),
          _buildCartProduct(),
          _buildCartProduct(),
          _buildCartProduct(),
        ],
      ),
    );
  }
}
