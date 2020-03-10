import 'package:flutter/material.dart';
import 'package:warga2/Beranda_Inbox.dart';
import 'package:warga2/absensi_security/destination_view.dart';
import 'package:warga2/bayar_iuran/home_iuran.dart';
import 'package:warga2/bayar_iuran/store_widget.dart';
import 'package:warga2/beranda_pendaftaran/pendaftaran_page.dart';
import 'package:warga2/beranda_pengaduan/home_pengaduan.dart';
import 'package:warga2/constant.dart';
import 'package:warga2/esp/e_surat_pengantar.dart';
import 'package:warga2/pemutakhir_data/pemutakhir_page.dart';
import 'package:warga2/pengurus/Anggota_Home.dart';
import 'package:warga2/saran/form.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {

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
                padding: const EdgeInsets.only(top: 10),
                child: StoreWidget(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
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
                            Column(
                              children: <Widget>[
                                SizedBox(height: 20.0),
                                Material(
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeAnggota_Pengurus(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(

                                          child: Image.asset('assets/daftar_pengurus.png',
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
                                            builder: (context) => E_Surat_Pengantar(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/e-surat_pengantar.png',
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
                                            builder: (context) => form(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/saran.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                )
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
                                            builder: (context) => Home_Iuran(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/iuran/bayar_iuranall.png',
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
                                          child: Image.asset('assets/tiket_kelurahan.png',
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
                                            builder: (context) => Pengaduan_Page(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/pengaduan.png',
                                              width: 80.0, height: 80.0),
                                        ),),
                                    )
                                )
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
                                            builder: (context) => Pemutakhir(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/pemutakhiran_data.png',
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
                                            builder: (context) => Destination_Security(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset('assets/absensi_security.png',
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
                                            builder: (context) => Pendaftaran_Page(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(1.0),
                                          child: Image.asset('assets/pendaftaran.png',
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
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home_Iuran(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/rupiah.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ),

                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Iuran",
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/histori.png",
                        width: 25.0,
                        height: 25.0,
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
                      new Image.asset(
                        "assets/tikket.png",
                        width: 25.0,
                        height: 25.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Tiket",
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
                          "assets/icopeng.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ),

                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Pengaduan",
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