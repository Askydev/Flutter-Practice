import 'package:ecom_merce/Screens/cart.dart';
import 'package:ecom_merce/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String name;
  final double price;

  DetailScreen({this.name,this.price,this.image});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count=1;

  Widget _buildSize({String name}){
    return Container(
      height: 60,
      width: 60,
      color: Colors.black38,
      child: Center(
        child: Text(name,style: TextStyle(fontSize: 20),),
      ),
    );
  }

  Widget _buildColor({Color color}){
    return Container(
      height: 60,
      width: 60,
      color: color,
    );
  }

  final TextStyle mystyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
  );

  Widget _buildImage(){
    return Column(
      children: [
        Center(
          child: Container(
            width: 350,
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/${widget.image}")
                      )
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildName2Description(){
    return Container(
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Text("\$ ${widget.price.toString()}",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black54,fontSize: 15),),
              Text("Description:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(){
    return Container(
      height: 120,
      // color: Colors.greenAccent,
      child: Wrap(
        children: [
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: TextStyle(
                fontSize: 15
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizePart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text("Size:",
            style: mystyle
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 260,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSize(name: "S"),
              _buildSize(name: "M"),
              _buildSize(name: "L"),
              _buildSize(name: "XL")
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildColorPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(
          height: 15,
        ),
        Text("Colour:",
            style: mystyle
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 260,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildColor(color: Colors.black),
              _buildColor(color: Colors.brown[300]),
              _buildColor(color: Colors.brown[800])
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQauntityPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
            "Quantity:",
            style: mystyle
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(20),
          ),
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
    );
  }

  Widget _buildButton(){
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
            "Check Out",
            style: mystyle),
        color: Colors.amber,
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>CartScreen(
            image: widget.image,
            price: widget.price,
            name: widget.name,
          ),
          ),);

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name,style: mystyle,),
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
      body: Container(
        child: ListView(
          children: [
            _buildImage(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildName2Description(),
                  _buildDescription(),
                  _buildSizePart(),
                  _buildColorPart(),
                  _buildQauntityPart(),
                  SizedBox(
                    height: 15,
                  ),
                  _buildButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
