import 'package:flutter/material.dart';
import 'package:warga2/beranda/beranda_view.dart';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class Pengaduan_Page extends StatefulWidget {
  @override
  _Pengaduan_PageState createState() => new _Pengaduan_PageState();
}

class _Pengaduan_PageState extends State<Pengaduan_Page> {
  //datepicker
  final formats = {
    InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
    InputType.date: DateFormat('yyyy-MM-dd'),
    InputType.time: DateFormat("HH:mm"),
  };
  InputType inputType = InputType.both;
  bool editable = true;
  DateTime date;

  //dropdown
  String _valFriends ;  //Ini untuk menyimpan value data friend
  List _myFriends = ["Suka", "Tidak Suka"];  //Array My Friend

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Pengaduan"),
        backgroundColor: Colors.transparent,
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
                                hintText:'Keterangan Aduan',
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
                                hintText:'Foto',
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
                          child: DropdownButton(
                            hint: Text("Pilih Kategori"),
                            value: _valFriends,
                            items: _myFriends.map((value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _valFriends = value;
                              });
                            },
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
                              hintText: "Creatod By",
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.mobile_screen_share,
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
                          child: DateTimePickerFormField(
                            inputType: inputType,
                            format: formats[inputType],
                            editable: editable,
                            decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: 'Date Created', hasFloatingPlaceholder: false),
                            onChanged: (dt) => setState(() => date = dt),
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
                              hintText: "Modified By",
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
                          child: DateTimePickerFormField(
                            inputType: inputType,
                            format: formats[inputType],
                            editable: editable,
                            decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                labelText: 'Date Modified', hasFloatingPlaceholder: false),
                            onChanged: (dt) => setState(() => date = dt),
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
                              child: new Text("Masukkan"),
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
