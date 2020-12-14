import 'package:flutter/material.dart';

final TextStyle mystyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
);

class CheckOut extends StatelessWidget {

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
                        image: AssetImage("images/galaxy.png"),
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
                        Text("Samsung Galaxy Gear-S2"),
                        Text("Electronics"),
                        Text("\$ 30.0",
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Container(
              height: 150,
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
          ],
        ),
      ),
    );
  }
}
