import 'package:blogging_app/Screens/Blog/comments.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BlogCard extends StatefulWidget {
  final index;
  const BlogCard({Key key, this.index}) : super(key: key);

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: bgColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 55,
                        color: primaryHeadingColor,
                      ),
                      title: Text(
                        'Manasi Variar',
                        style: TextStyle(color: primaryHeadingColor),
                      ),
                      subtitle: Text(
                        ' 12 Aug 2021, 12:15 PM',
                        style:
                            TextStyle(color: primaryHeadingColor, fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      child: Card(
                        color: Colors.white60,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'SWDHWAHSWDUSHCGHEUHASHCAIuvsdirehurhfuzrdshfuSSRJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ',
                            style: TextStyle(color: bgColor),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 65,
              width: double.infinity,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: null,
                          child: Icon(
                            Icons.thumb_up,
                            color: btnColor,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '10',
                          style: TextStyle(color: primaryHeadingColor),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CommentPage()));
                          },
                          child: Icon(
                            Icons.comment,
                            color: btnColor,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '10',
                          style: TextStyle(color: primaryHeadingColor),
                        )
                      ],
                    ),
                  ],
                ),
                color: bgColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
