import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
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
              Text(
                'Comments',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: primaryHeadingColor),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15)),
              for (int i = 0; i < 15; i++)
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
      //
    );
  }
}
