import 'package:flutter/material.dart';
import 'package:tweetapp/post.dart';
import 'package:tweetapp/postList.dart';

import 'TextInputWidget.dart';

class MyHome extends StatefulWidget {
  String author = "";
  MyHome(this.author);
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String text = "";
  List<Post> postList = [];
  void newPost(String s) {
    print(s);
    this.setState(() {
      postList.add(new Post(s, this.widget.author));
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tweet App")),
        body: Column(
          children: <Widget>[
            Expanded(child: PostList(this.postList)),
            TextInputWidget(this.newPost)
            // Text(this.text)
          ],
        ));
  }
}
