import 'package:flutter/material.dart';
import 'package:warga2/absensi_security/home.dart';
import 'package:warga2/absensi_security/setting.dart';

void main()
{
  runApp(
    Absensi()
  );
}

class Absensi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Material(
      child:  MyButtonNavigation(),
    );
  }
}



class MyButtonNavigation extends StatefulWidget{
  @override
  _MyButtonNavigationState createState()=> new _MyButtonNavigationState();
}

class _MyButtonNavigationState extends State<MyButtonNavigation>{
  int _currentIndex = 0 ;
  final List<Widget> _children = [
    Home_Absen(),
    Setting_absen(),
  ];

  void onTappedBar(int index)
  {
    setState((){
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("home")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              title: new Text("home")
          ),BottomNavigationBarItem(
              icon: new Icon(Icons.contacts),
              title: new Text("home")
          ),
        ],
      )
    );
  }
}