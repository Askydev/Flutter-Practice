import 'package:flutter/material.dart';

final TextStyle mystyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
);

final TextStyle mystyle2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
);

class CheckOut extends StatefulWidget {

  final double price;
  final String name;
  final String image;

  CheckOut({this.name,this.price,this.image});

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
                  width: 250,
                  child: ListTile(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name),
                        Text("Electronics"),
                        Text("\$ ${widget.price}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Quantity:"),
                              Text("1"),
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

  Widget _buildTotalPrice({String startName, String endName}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(startName, style: mystyle2,),
        Text(endName, style: mystyle2,),
      ],
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
          child: Text("Buy",style: TextStyle(color: Colors.black,fontSize: 19),),
          onPressed: (){},
        ),
      ),

      appBar: AppBar(
        centerTitle: true,
        title: Text("Check Out",style: mystyle,),
        backgroundColor: Colors.pink,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: (){},
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

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: ListView(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("CheckOut",style: TextStyle(fontSize: 28),),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _buildCartProduct(),
            _buildCartProduct(),

            Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTotalPrice(
                    startName: "Your Price",
                    endName: "\$ 60.0"
                  ),
                  _buildTotalPrice(
                      startName: "Discount",
                      endName: "3%"
                  ),
                  _buildTotalPrice(
                      startName: "Shipment charges",
                      endName: "\$ 3.75"
                  ),
                  _buildTotalPrice(
                      startName: "Total Price",
                      endName: "\$ 63.75"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
