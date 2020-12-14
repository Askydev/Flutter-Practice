import 'package:flutter/material.dart';

final TextStyle mystyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
);

class CheckOut extends StatelessWidget {
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
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
