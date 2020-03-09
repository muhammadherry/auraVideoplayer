import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warga2/Beranda_Inbox.dart';
import 'package:warga2/absensi_security/home.dart';

class Destination_Security extends StatefulWidget{
  @override
  _Destination_SecurityState createState() => _Destination_SecurityState();
}

class _Destination_SecurityState extends State<Destination_Security>{
  int _currentIndex = 0;
  final List<Widget> _children =[
    Home_Security(),
    Home_Beranda_Indbox(),
    Home_Beranda_Indbox(),
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              title: new Text("Setting")
          ),BottomNavigationBarItem(
              icon: new Icon(Icons.contacts ),
              title: new Text("Setting")
          ),
        ],
      ),
    );
  }
}