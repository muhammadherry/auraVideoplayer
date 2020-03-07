import 'package:flutter/material.dart';
import 'package:warga2/Beranda_Inbox.dart';
import 'package:warga2/Beranda_Kooperasi/Home_Koperasi.dart';
import 'package:warga2/bayar_iuran/home_screen.dart';
import 'package:warga2/beranda/beranda_view.dart';
import 'package:warga2/constant.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  final List<Widget> _container = [
    new BerandaPage(),
    new Home_Koperasi(),
    new Home_Beranda_Indbox(),
    new HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation()
    );
  }

  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: GojekPalette.green,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Beranda',
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.monetization_on,
            color: GojekPalette.green,
          ),
          icon: new Icon(
            Icons.monetization_on,
            color: Colors.grey,
          ),
          title: new Text('Koperasi'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.mail,
            color: GojekPalette.green,
          ),
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          title: new Text('Inbox'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: GojekPalette.green,
          ),

          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),

          title: new Text('Akun'),
        ),
      ],
    );
  }
}