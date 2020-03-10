import 'package:flutter/material.dart';
import 'package:warga2/beranda/beranda_view.dart';

class Edit_Pemutakhir extends StatefulWidget {
  @override
  _Edit_PemutakhirState createState() => new _Edit_PemutakhirState();
}

class _Edit_PemutakhirState extends State<Edit_Pemutakhir> {
  int radioValue = 0;
  void handleradioValue(int value){
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Add Pengurus"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/tanagochi.jpg"), fit: BoxFit.cover)
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        new Image.asset('assets/logotol1.png',width: 200.0,),

                        SizedBox(height: 50.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText:'Nama Lengkat',
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(Icons.supervised_user_circle,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),

                          child: TextField(
                            decoration: new InputDecoration(
                                hintText:'Tempat Tgl Lahir',
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(Icons.date_range,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),

                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: "Status",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.fiber_smart_record,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: "Agama",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.mobile_screen_share,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                            children: <Widget>[
                              Radio(
                                groupValue: radioValue,
                                activeColor: Colors.blue,
                                onChanged: handleradioValue,
                                value: 0,
                              ),
                              Text('Laki-laki',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Radio(
                                groupValue: radioValue,
                                activeColor: Colors.blue,
                                onChanged: handleradioValue,
                                value: 1,
                              ),
                              Text('Perempuan',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: "Pekerjaan",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.work,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: "No-KTP",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.credit_card,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: "Kartu Keluarga",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.supervised_user_circle,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          height: 50.0,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: "Alamat",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.add_location,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          height: 50.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(2)
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                BerandaPage();
                                Navigator.pop(context);
                              },
                              child: new Text("UpDate"),
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );

  }
}
