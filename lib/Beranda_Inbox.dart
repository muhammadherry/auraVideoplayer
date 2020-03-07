import 'package:flutter/material.dart';

class Home_Beranda_Indbox extends StatefulWidget {
  @override
  _Home_Beranda_IndboxState createState() => new _Home_Beranda_IndboxState();
}

class _Home_Beranda_IndboxState extends State<Home_Beranda_Indbox> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "assets/error.png",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }
}