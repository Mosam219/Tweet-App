import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tweetapp/HomePage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String author = "";
  TextEditingController controller = new TextEditingController();
  void click() {
    this.author = controller.text;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHome(this.author)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login Page")),
        body: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(50),
            child: TextField(
              controller: this.controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.black)),
                  labelText: "login",
                  suffixIcon: IconButton(
                      onPressed: this.click, icon: Icon(Icons.send))),
            ),
          ),
        ));
  }
}
