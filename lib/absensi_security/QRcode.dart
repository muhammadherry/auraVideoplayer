import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class Barcode_Absensi extends StatefulWidget {
  Barcode_Absensi({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Barcode_AbsensiState createState() => _Barcode_AbsensiState();
}
class _Barcode_AbsensiState extends State<Barcode_Absensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('QR Code Flutter')),
        body: Center(
            child: Container(
                child: Stack(alignment: Alignment(0, 0), children: <Widget>[
                  // Gradient
                  Container(
                      width: 198,
                      height: 198,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            stops: [0.0, 1],
                            colors: [Colors.blue, Colors.blue],
                          ))),
                  // overlay
                  Container(
                    width: 189,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                  ),
                  // QR Code
                  QrImage(
                    data: '123',
                    size: 198,
                    errorCorrectionLevel: QrErrorCorrectLevel.Q,
                    gapless: false,
                    version: 9,
                  ),
                  // Logo background
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                  ),
                  // Logo
                  Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0.0, 1],
                          colors: [Color(0xFFF7941F), Colors.blue],
                        )),
                    child: Icon(Icons.home, color: Colors.white, size: 33),
                  )
                ]))));
  }
}