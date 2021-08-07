import 'package:blogging_app/Screens/Auth/login.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  final _formkey3 = GlobalKey<FormState>();

  TextEditingController _phone = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirm = TextEditingController();

  bool _otp = false;
  bool _name = false;

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: primaryHeadingColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formkey1,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: _phone,
                        readOnly: _otp,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Phone Number can't be empty";
                          } else if (value.trim().length < 10) {
                            return 'Phone Number must be 10 digits';
                          }

                          return null;
                        },
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: TextButton(
                            onPressed: () {
                              if (_formkey1.currentState.validate())
                                setState(() {
                                  _otp = true;
                                });
                            },
                            child: Text(
                              'Generate OTP',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _otp
                  ? Form(
                      key: _formkey2,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: TextFormField(
                                  controller: _otpController,
                                  readOnly: _name,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(6)
                                  ],
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "OTP can't be empty";
                                    } else if (value.trim().length < 6) {
                                      return 'OTP must be 6 digits';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(color: primaryHeadingColor),
                                  decoration: InputDecoration(
                                    helperStyle:
                                        TextStyle(color: primaryHeadingColor),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: primaryHeadingColor)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: primaryHeadingColor)),
                                    labelText: 'OTP',
                                    labelStyle:
                                        TextStyle(color: primaryHeadingColor),
                                  )),
                            ),
                            MaterialButton(
                              height: 60,
                              onPressed: () {
                                if (_formkey2.currentState.validate())
                                  setState(() {
                                    _name = true;
                                  });
                              },
                              color: btnColor,
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
                          ],
                        ),
                      ),
                    )
                  : Container(),
              !_name
                  ? Container()
                  : Form(
                      key: _formkey3,
                      child: Column(
                        children: [
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
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                            child: TextFormField(
                              controller: _confirm,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Password can't be empty";
                                } else if (_password.text != value) {
                                  return 'Passwords do not match';
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
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(color: primaryHeadingColor),
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
                                if (_formkey3.currentState.validate())
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
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
                          )
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
