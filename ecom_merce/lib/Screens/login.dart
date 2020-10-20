import 'package:ecom_merce/Widgets/Formfields.dart';
import 'package:ecom_merce/Widgets/account_state.dart';
import 'package:ecom_merce/Widgets/mbutton.dart';
import 'package:ecom_merce/Widgets/passwordFields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'sign.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();


String p =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
RegExp regExp = new RegExp(p);
bool obsText=true;
String email;
String password;

class _LoginState extends State<Login> {
  void Validation() async{
    final FormState _form = _formkey.currentState;
    if (!_form.validate()) {
      try{
        UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        print(result.user.uid);
      }on PlatformException catch(e){
        print(e.message.toString());
        _scaffoldkey.currentState.showSnackBar(
          new SnackBar(
            content: new Text(e.message),
          ),
        );
      }
    } else {
      print("No");
    }
  }

  Widget _buildTextFormFields() {
    return Container(
      height: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FormFtxt(
            htxt: "Email",
            onChanged: (value){
              setState(() {
                email=value;
                print(email);
              });
            },
            validator: (value) {
              if (value == "") {
                return "Please fill Email";
              } else if (!regExp.hasMatch(value)) {
                return "Email is Invalid";
              }
              return "";
            },
          ),
          PassW(
            htxt: "Password",
            onChanged: (value){
              setState(() {
                password=value;
                print(password);
              });
            },
            obsText: obsText,
            validator: (value) {
              if (value == "") {
                return "Please enter password";
              } else if (value.length < 8) {
                return "Please enter at least 8 characters";
              }
              return "";
            },
            onTap: () {
              FocusScope.of(context).unfocus();
              setState(() {
                obsText = !obsText;
              });
            },
          ),
          MyButton(
            onPressed: () {
              Validation();
            },
            name: "Login",
          ),
          Account(
            accname: "SignUp",
            txt: "I don't have any Account!",
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (ctx) => SignUp()));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    _buildTextFormFields(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
