import 'package:blogging_app/Screens/Auth/homePage.dart';
import 'package:blogging_app/Screens/Blog/home.dart';
import 'package:blogging_app/constants.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Create Blog',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: primaryHeadingColor,
                )),
            Form(
              key: _formkey1,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Title can't be empty";
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
                    labelText: 'Title',
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
                      return "Description can't be empty";
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
                    labelText: 'Blog Description',
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(color: primaryHeadingColor),
                  ),
                  minLines: 8,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  if (_formkey1.currentState.validate() |
                      _formkey2.currentState.validate())
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationBar()));
                },
                color: btnColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Post",
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
    );
  }
}
