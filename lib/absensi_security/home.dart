import 'package:flutter/material.dart';
import 'package:warga2/Beranda_Inbox.dart';
import 'package:warga2/constant.dart';
class Home_Security extends StatefulWidget {
  @override
  _Home_SecurityState createState() => new _Home_SecurityState();
}

class _Home_SecurityState extends State<Home_Security> {

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        /* appBar: new GojekAppBar(),*/
        backgroundColor: GojekPalette.grey,
        body: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/tanagochi.jpg"), fit: BoxFit.cover)),
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
                padding: EdgeInsets.only(top: 100.0, right: 15.0, left: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 325.0,
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
                    "Menu Security",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                  new Container(
                    child: new Text(
                      "",
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
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Beranda_Indbox(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/security/tamu.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ),

                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Tamu",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Beranda_Indbox(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/security/guest_list.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Daftar",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Beranda_Indbox(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/security/history.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "History",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Beranda_Indbox(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/security/bantuan.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ),

                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Bantuan",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )

                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  //scroll horizontal listview
  /*Widget _buildGopayMenu() {
    return new Container(
        height: 100.0,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
              child: Column(
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
                          "Menu Security",
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: "NeoSansBold"),
                          textAlign: TextAlign.start,
                        ),
                        new Container(
                          child: new Text(
                            "",
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
                    padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/security/tamu.png",
                                width: 25.0,
                                height: 25.0,
                              ),
                            ),

                            new Padding(
                              padding: EdgeInsets.only(top: 5.0),
                            ),
                            new Text(
                              "Tambah Tamu",
                              style: TextStyle(color: Colors.white, fontSize: 10.0),
                            )
                          ],
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home_Beranda_Indbox(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/security/history.png",
                                width: 25.0,
                                height: 25.0,
                              ),
                            ),

                            new Padding(
                              padding: EdgeInsets.only(top: 5.0),
                            ),
                            new Text(
                              "History Tamu",
                              style: TextStyle(color: Colors.white, fontSize: 10.0),
                            )
                          ],
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home_Beranda_Indbox(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/icon_scan.png",
                                width: 25.0,
                                height: 25.0,
                              ),
                            ),

                            new Padding(
                              padding: EdgeInsets.only(top: 5.0),
                            ),
                            new Text(
                              "Barcode",
                              style: TextStyle(color: Colors.white, fontSize: 10.0),
                            )
                          ],
                        ),

                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home_Beranda_Indbox(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/security/bantuan.png",
                                width: 25.0,
                                height: 25.0,
                              ),
                            ),

                            new Padding(
                              padding: EdgeInsets.only(top: 5.0),
                            ),
                            new Text(
                              "Bantuan",
                              style: TextStyle(color: Colors.white, fontSize: 10.0),
                            )
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      );*/
  }
}