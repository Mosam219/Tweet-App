import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tweetapp/HomePage.dart';
import 'auth.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  late FirebaseUser user;
  void click() {
    signInWithGoogle().then((user) => {
          this.user = user,
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyHome(user.displayName)))
        });
  }

  Widget googleloginButton() {
    return ElevatedButton(
        onPressed: this.click, child: Text("hello Login Plzz"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: googleloginButton());
  }
}
