import 'package:flutter/material.dart';
import 'package:warga2/pengurus/add_pengurus.dart';
import 'package:warga2/pengurus/coba_pengurus.dart';

class Anggota_Pengurus extends StatefulWidget {
  @override
  _Anggota_PengurusState createState() => new _Anggota_PengurusState();
}

class _Anggota_PengurusState extends State<Anggota_Pengurus> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
appBar: new AppBar(
  title: new Text('Anggota Pengurus',style: TextStyle(color: Colors.white),),
  backgroundColor: Colors.transparent,
),
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/tanagochi.jpg"), fit: BoxFit.cover)),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          backgroundColor: Colors.grey,
          onPressed: ()=> Navigator.of(context).push(
            new MaterialPageRoute(builder: (BuildContext context)=> new add_pengurus())
          )),

    );
  }
}