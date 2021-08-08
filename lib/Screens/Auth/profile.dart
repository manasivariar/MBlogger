import 'package:blogging_app/Screens/Auth/changePassword.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Container(
          child: Icon(
            Icons.account_circle,
            size: 100,
            color: secondaryHeadingColor,
          ),
          // child: Text("TESTING for PROFILE")
        ),
        Divider(
          height: 50,
          indent: 20,
          endIndent: 20,
          thickness: 1,
          color: btnColor,
        ),
        Text(
          'My Details',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: primaryHeadingColor,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Name: Manasi Variar',
          style: TextStyle(color: secondaryHeadingColor),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Phone Number: 9619029080',
          style: TextStyle(color: secondaryHeadingColor),
        ),
        Divider(
          height: 50,
          indent: 20,
          endIndent: 20,
          thickness: 1,
          color: btnColor,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChangePassword()));
          },
          child: Text(
            'Change Password',
            style: TextStyle(
              color: primaryHeadingColor,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          //
        ),
        Divider(
          height: 60,
          indent: 20,
          endIndent: 20,
          thickness: 1,
          color: btnColor,
        ),
        Text(
          'Logout',
          style: TextStyle(
            color: primaryHeadingColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Divider(
          height: 60,
          indent: 20,
          endIndent: 20,
          thickness: 1,
          color: btnColor,
        ),
      ],
    );
  }
}
