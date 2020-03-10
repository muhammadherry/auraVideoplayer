import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_view extends StatefulWidget{
  @override
  _List_ViewState createState() => _List_ViewState();
}

class _List_ViewState extends State<List_view>{
  String text = "Jeremia Manogi Mario";
  String tl = "Jakarta";
  String ttl = "21 Desember 2000";
  String gender = "Laki - laki";

  Map<String, String> alamat = {
    "alamat": "Jln.Pegawai Solo",
    "rt/rw": "001/013",
    "kel/Desa": "SUKAMAJU BARU",
    "kec": "Tapos"
  };
  @override
  Widget build(BuildContext context) {

    return ListView(

      children: <Widget>[
        Container(
          height: 100,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 45,
                  backgroundImage:
                  ExactAssetImage('assets/profil.png', scale: 2),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: 30, top: 10),
                            child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Nama : ",
                                    style: TextStyle(fontStyle: FontStyle.italic)),
                                TextSpan(
                                    text: text,
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ], style: TextStyle(fontSize: 14,color:Colors.white)),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 30),
                            child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Tempat/Tanggal Lahir : \n",
                                    style: TextStyle(fontStyle: FontStyle.italic)),
                                TextSpan(
                                    text: "${tl}/${ttl}",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ], style: TextStyle(fontSize: 14,color: Colors.white)),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 30),
                            child: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Jenis Kelamin : ",
                                    style: TextStyle(fontStyle: FontStyle.italic)),
                                TextSpan(
                                    text: gender,
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ], style: TextStyle(fontSize: 14,color: Colors.white)),
                            )),
                      ],
                    )
                  ],
                ),]),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.5),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Alamat : ",
                                style: TextStyle(fontStyle: FontStyle.italic)),
                            TextSpan(
                                text: alamat["alamat"],
                                style: TextStyle( fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline)),
                          ]),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "RT/RW : ",
                                      style: TextStyle(fontStyle: FontStyle.italic)),
                                  TextSpan(
                                      text: alamat["rt/rw"],
                                      style: TextStyle( fontStyle: FontStyle.italic,
                                          decoration: TextDecoration.underline)),
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "keluran/Desa : ",
                                      style: TextStyle(fontStyle: FontStyle.italic)),
                                  TextSpan(
                                      text: alamat["kel/Desa"],
                                      style: TextStyle(fontStyle: FontStyle.italic,
                                          decoration: TextDecoration.underline)),
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "kecamatan : ",
                                      style: TextStyle(fontStyle: FontStyle.italic)),
                                  TextSpan(
                                      text: alamat["kec"],
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          decoration:TextDecoration.underline)),
                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        )
      ],
    );

  }
}