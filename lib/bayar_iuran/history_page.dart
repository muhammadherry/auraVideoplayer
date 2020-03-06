import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => new _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('History Pembayaran',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent,
      ),
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/tanagochi.jpg"), fit: BoxFit.cover)),
      ),
    );
  }
}