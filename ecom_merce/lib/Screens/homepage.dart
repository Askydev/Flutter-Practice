import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
        backgroundColor: Colors.black,
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
    );
  }
}