import 'package:blogging_app/Screens/Auth/forgotPassword.dart';
import 'package:blogging_app/Screens/Blog/home.dart';
import 'package:blogging_app/Screens/signup.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          color: primaryHeadingColor,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: primaryHeadingColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login to your account",
                        style: TextStyle(fontSize: 15, color: secondaryHeadingColor),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                        child: TextFormField(
                          controller: _phone,
                          // onTap: () {
                          //   FocusScopeNode currentFocus =
                          //       FocusScope.of(context);
                          //   if (!currentFocus.hasPrimaryFocus) {
                          //     currentFocus.unfocus();
                          //   }
                          // },
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Phone Number can't be empty";
                            } else if (value.trim().length < 10) {
                              return 'Phone Number must be 10 digits';
                            }

                            return null;
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          style: TextStyle(color: primaryHeadingColor),
                          decoration: InputDecoration(
                            helperStyle: TextStyle(color: primaryHeadingColor),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryHeadingColor)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryHeadingColor)),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: primaryHeadingColor),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: TextFormField(
                          controller: _password,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password can't be empty";
                            } else if (value.trim().length < 8) {
                              return 'Password must be atleast 8 charcters long';
                            }
                            return null;
                          },
                          style: TextStyle(color: primaryHeadingColor),
                          obscureText: true,
                          decoration: InputDecoration(
                            helperStyle: TextStyle(color: primaryHeadingColor),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryHeadingColor)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: primaryHeadingColor)),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: primaryHeadingColor),
                          ),
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordPage()));
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            if (_formKey.currentState.validate())
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBar()));
                          },
                          color: btnColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 200)),
                      SizedBox(height: 200),
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: secondaryHeadingColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Text(
                          " Signup",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: btnColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
