import 'package:ecom_merce/Screens/login.dart';
import 'package:ecom_merce/Widgets/Formfields.dart';
import 'package:ecom_merce/Widgets/account_state.dart';
import 'package:ecom_merce/Widgets/mbutton.dart';
import 'package:ecom_merce/Widgets/passwordFields.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

String p =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
RegExp regExp = new RegExp(p);

bool obsText = true;

class _SignUpState extends State<SignUp> {
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 210,
                  width: double.infinity,
                  // color: Colors.lightBlue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FormFtxt(
                        htxt: "User Name",
                        validator: (value) {
                          if (value == "") {
                            return "Username field is required";
                          }
                          if (value.length < 6) {
                            return "Username is too short";
                            // ignore: missing_return,
                          }
                          return "";
                        },
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
                      FormFtxt(
                        htxt: "Phone Number",
                        validator: (value) {
                          if (value == "") {
                            return "Please enter Phone Number";
                          } else if (value.length < 10) {
                            return "Please check your Phone Number";
                          }
                          return "";
                        },
                      ),

                      PassW(
                        htxt: "Password",
                        validator: (value) {
                          if (value == "") {
                            return "Please enter password";
                          } else if (value.length < 8) {
                            return "Please enter at least 8 characters";
                          }
                          return "";
                        },
                        obsText: true,
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          setState(() {
                            obsText = !obsText;
                          });
                        },
                      ),

                      // SizedBox(
                      //   height: 10,
                      // ),
                      MyButton(
                        name: "SignUp",
                        onPressed: () {
                          Validation();
                        },
                      ),
                      Account(
                        accname: "Login",
                        txt: "I already have an Account!",
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (ctx) => Login()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
