import 'package:flutter/material.dart';
import 'package:warga2/pengurus/add_pengurus.dart';

class Pemutakhir extends StatefulWidget {
  @override
  _PemutakhirState createState() => new _PemutakhirState();
}

class _PemutakhirState extends State<Pemutakhir> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Daftar Pemutakhir Data',style: TextStyle(color: Colors.white),),
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