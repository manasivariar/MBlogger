import 'package:blogging_app/Screens/Blog/blogCard.dart';
import 'package:blogging_app/Screens/Blog/blogPreview.dart';
import 'package:blogging_app/Screens/Blog/comments.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 100,
                  endIndent: 100,
                ),
            itemCount: 10,
            itemBuilder: (context, index) => GestureDetector(
                  child: BlogCard(
                    index: index,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BlogPreview()));
                  },
                )));
  }
}
