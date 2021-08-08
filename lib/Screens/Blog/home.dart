import 'package:blogging_app/Screens/Blog/homePage.dart';
import 'package:blogging_app/Screens/Auth/profile.dart';
import 'package:blogging_app/Screens/Blog/post.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: NavigationBar(),
//     );
//   }
// }

class NavigationBar extends StatefulWidget {
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  bool isHome = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: bgColor,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: bgColor,
        //   leading: Container(),
        // ),
        body: isHome ? HomePage() : ProfilePage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: btnColor,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PostPage()));
          },
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
                              color:
                                  isHome ? primaryHeadingColor : Colors.black,
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
                              color:
                                  !isHome ? primaryHeadingColor : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
