import 'package:flutter/material.dart';

class Home_Absen extends StatefulWidget{
  @override
  _Home_AbsenState createState()=> new _Home_AbsenState();
}

class _Home_AbsenState extends State<Home_Absen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
        ),
        body: new Center(
          child: new Text("home page"),
        )
    );
  }
}