import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  bool isHome = true;

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
      body: isHome
          ? Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Text("HOME"),
            )
          : Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Text("Profile"),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: btnColor,
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Hexcolor('4b484f'),
        shape: CircularNotchedRectangle(),
        child: Container(
          margin: EdgeInsets.only(top: 15, left: 50, right: 50),
          // decoration:r
          //     BoxDecoration(color: Hexcolor('78767b')),
          // color: bgColor,
          height: 60,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isHome = true;
                    });
                  },
                  child: Container(
                    color: Hexcolor('4b484f'),
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: isHome ? primaryHeadingColor : Colors.black,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: isHome ? primaryHeadingColor : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isHome = false;
                    });
                  },
                  child: Container(
                    color: Hexcolor('4b484f'),
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: !isHome ? primaryHeadingColor : Colors.black,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: !isHome ? primaryHeadingColor : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
