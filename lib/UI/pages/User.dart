import 'package:flutter/material.dart';


class User extends StatefulWidget {
  User({Key key}) : super(key: key);


  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("user"),
    );
  }


}
