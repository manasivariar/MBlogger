import 'package:blogging_app/Screens/Auth/Blog/home.dart';
import 'package:blogging_app/Screens/Auth/forgotPassword.dart';
import 'package:blogging_app/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Hexcolor("#1F1B24"),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Hexcolor("#1F1B24"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          color: Colors.grey[400],
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
                            color: Colors.grey[400]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login to your account",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                        child: TextFormField(
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
                          style: TextStyle(color: Colors.grey[400]),
                          decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.grey[400]),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password can't be empty";
                            } else if (value.trim().length < 8) {
                              return 'Password must be atleast 8 charcters long';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.grey[400]),
                          obscureText: true,
                          decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.grey[400]),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey[400]),
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
                                      builder: (context) => HomePage()));
                          },
                          color: Hexcolor("#DC4170"),
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
                      Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 200)),
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey[700]),
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
                            color: Hexcolor("#DC4170"),
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
