import 'package:flutter/material.dart';
import 'package:warga2/Beranda_Inbox.dart';
import 'package:warga2/constant.dart';

class Home_Koperasi extends StatefulWidget {
  @override
  _Home_KoperasiState createState() => new _Home_KoperasiState();
}

class _Home_KoperasiState extends State<Home_Koperasi> {

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        /* appBar: new GojekAppBar(),*/
        backgroundColor: GojekPalette.grey,
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  color: Colors.grey[200],
                  child: new Column(
                    children: <Widget>[
                      _buildGopayMenu(),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0.0, 3.0),
                            blurRadius: 15.0)
                      ]),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height: 20.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home_Beranda_Indbox(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(

                                          child: Image.asset('assets/koperasi/ac.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                ),
                                SizedBox(height: 20.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home_Beranda_Indbox(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/koperasi/bersih.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                ),

                              ],

                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 20.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home_Beranda_Indbox(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/koperasi/hidroponik.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                ),
                                SizedBox(height: 15.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home_Beranda_Indbox(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/koperasi/londry.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                ),

                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 20.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home_Beranda_Indbox(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/koperasi/sembako.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                ),
                                SizedBox(height: 15.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home_Beranda_Indbox(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/koperasi/mobil.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildGopayMenu() {
    return new Container(
        height: 100.0,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(12.0),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: new BorderRadius.only(
                      topLeft: new Radius.circular(3.0),
                      topRight: new Radius.circular(3.0))),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "Saldo Kas",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                  new Container(
                    child: new Text(
                      "Rp. 120.000",
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 2.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/icon_transfer.png",
                        width: 25.0,
                        height: 25.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Transfer",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/icon_scan.png",
                        width: 25.0,
                        height: 25.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Scan QR",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/icon_saldo.png",
                        width: 25.0,
                        height: 25.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Isi Saldo",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/icon_menu.png",
                        width: 25.0,
                        height: 25.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Lainnya",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}