import 'package:blogging_app/Screens/Auth/profile.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Blog/homePage.dart';

class ChangePassword extends StatefulWidget {
  @override
  ChangePasswordState createState() => ChangePasswordState();
}

class ChangePasswordState extends State<ChangePassword> {
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  final _formkey3 = GlobalKey<FormState>();
  final _formkey4 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: true,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Change Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: primaryHeadingColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formkey1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Phone Number can't be empty";
                      } else if (value.trim().length < 10) {
                        return 'Phone Number must be 10 digits';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    style: TextStyle(color: primaryHeadingColor),
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: primaryHeadingColor),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: primaryHeadingColor),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formkey2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Name can't be empty";
                      }
                      return null;
                    },
                    style: TextStyle(color: primaryHeadingColor),
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: primaryHeadingColor),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: primaryHeadingColor),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formkey3,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.trim().length < 8) {
                        return 'Password must be atleast 8 charcters long';
                      }
                      return null;
                    },
                    obscureText: true,
                    style: TextStyle(color: primaryHeadingColor),
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: primaryHeadingColor),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      labelText: 'Current Password',
                      labelStyle: TextStyle(color: primaryHeadingColor),
                    ),
                  ),
                ),
              ),
              Form(
                key: _formkey4,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.trim().length < 8) {
                        return 'Password must be atleast 8 charcters long';
                      }
                      return null;
                    },
                    obscureText: true,
                    style: TextStyle(color: primaryHeadingColor),
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: primaryHeadingColor),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryHeadingColor)),
                      labelText: 'New Password',
                      labelStyle: TextStyle(color: primaryHeadingColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    if (_formkey1.currentState.validate() |
                        _formkey2.currentState.validate() |
                        _formkey3.currentState.validate() |
                        _formkey4.currentState.validate())
                      Navigator.pop(context);
                  },
                  color: btnColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Update",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
