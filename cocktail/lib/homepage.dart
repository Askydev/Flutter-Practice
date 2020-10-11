import 'dart:convert';
import 'package:dx/drinkdetail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'main.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res,drinks;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchdata();
  }

  fetchdata() async {
    res = await http.get(api);
    drinks = jsonDecode(res.body)["drinks"];
    print(drinks.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: mclr,
      appBar: AppBar(
        title: Center(child: Text("Cocktail's Here")),
        elevation: 0.0,
      ),
      body: Center(
        child: res != null? ListView.builder(
            itemCount: drinks.length,
            itemBuilder: (context, index) {
              var dr=drinks[index];
              return ListTile(
                leading: Hero(
                    tag:dr["idDrink"],
                    child: CircleAvatar(backgroundImage: NetworkImage(dr["strDrinkThumb"]),)),
                title: Text(
                    "${dr["strDrink"]} "
                ),
                subtitle: Text(
                    "${dr["idDrink"]} "
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrinkDetail(drinks: dr)));
                },
              );
            }):CircularProgressIndicator(
          backgroundColor: Colors.cyan,
        ),
      ),
    );
  }
}