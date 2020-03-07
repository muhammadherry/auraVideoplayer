import 'package:flutter/material.dart';

class Setting_absen extends StatefulWidget{
  @override
  _Setting_absenState createState()=> new _Setting_absenState();
}

class _Setting_absenState extends State<Setting_absen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Setting"),
        ),
      body: new Center(
        child: new Text("setting page"),
      )
    );
  }
}