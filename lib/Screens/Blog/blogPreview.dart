import 'package:blogging_app/Screens/Blog/comments.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';

class BlogPreview extends StatefulWidget {
  final index;
  const BlogPreview({Key key, this.index}) : super(key: key); //
  @override
  _BlogPreviewState createState() => _BlogPreviewState();
}

class _BlogPreviewState extends State<BlogPreview> {
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
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: MediaQuery.of(context).size.height,
        color: bgColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
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
                                style: TextStyle(
                                    color: primaryHeadingColor, fontSize: 12),
                              ),
                            ),
                            Container(
                              height: 280,
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
                                            builder: (context) =>
                                                CommentPage()));
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recent Comments",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: primaryHeadingColor),
                ),
              ),
              for (int i = 0; i < 3; i++)
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: bgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Manasi Variar',
                                    style:
                                        TextStyle(color: primaryHeadingColor),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  child: Card(
                                    elevation: 10,
                                    color: Colors.white60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'Nice Blog!',
                                        style: TextStyle(color: bgColor),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
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
