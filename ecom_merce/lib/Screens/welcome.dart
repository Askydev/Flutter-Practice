import 'package:ecom_merce/Screens/homepage.dart';
import 'package:ecom_merce/Screens/login.dart';
import 'package:ecom_merce/Screens/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class WelCome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("images/welcome.png"))
                ),
              ),
              Text("Welcome",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 22),),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                width: 250,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: Colors.cyan[200],
                  elevation: 10.0,
                  child: Text("Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>SignUp(),),);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? \t\t",style: TextStyle(fontSize: 15),),
                  GestureDetector(
                    child: Text("Login", style: TextStyle(color: Colors.green,fontSize: 17),),
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Homepage(),),);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
