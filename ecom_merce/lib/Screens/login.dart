import 'package:ecom_merce/Widgets/Formfields.dart';
import 'package:ecom_merce/Widgets/account_state.dart';
import 'package:ecom_merce/Widgets/mbutton.dart';
import 'package:ecom_merce/Widgets/passwordFields.dart';
import 'package:flutter/material.dart';
import 'sign.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

String p =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
RegExp regExp = new RegExp(p);

class _LoginState extends State<Login> {
  void Validation() {
    final FormState _form = _formkey.currentState;
    if (_form.validate()) {
      print("Yes");
    } else {
      print("No");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    FormFtxt(
                      htxt: "Email",
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
                      obsText: true,
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
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (ctx) => SignUp()));
                      },
                    ),
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
