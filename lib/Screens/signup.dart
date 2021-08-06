import 'package:blogging_app/Screens/Auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();

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
          key: _formkey,
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
                        "Signup",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Create an account, it's free",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: TextFormField(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 227.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Generate OTP',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 200, 10),
                        child: TextFormField(
                            style: TextStyle(color: Colors.grey[400]),
                            decoration: InputDecoration(
                              helperStyle: TextStyle(color: Colors.grey[400]),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              labelText: 'OTP',
                              labelStyle: TextStyle(color: Colors.grey[400]),
                            )),
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        color: Hexcolor("#DC4170"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Verify",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password can't be empty";
                            }
                            // else if (value.trim().length < 8) {
                            //   return 'Password must be atleast 8 charcters long';
                            // }
                            return null;
                          },
                          style: TextStyle(color: Colors.grey[400]),
                          decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.grey[400]),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[400])),
                            labelText: 'Name',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            if (_formkey.currentState.validate())
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                          },
                          color: Hexcolor("#DC4170"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
