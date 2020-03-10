import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:warga2/landingpage_view.dart';

class Pendaftaran_Page extends StatefulWidget{
  @override
  _Pendaftaran_PageState createState() => new _Pendaftaran_PageState();
}

class _Pendaftaran_PageState extends State<Pendaftaran_Page>{
  final formats = {
    InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
    InputType.date: DateFormat('yyyy-MM-dd'),
    InputType.time: DateFormat("HH:mm"),
  };
  InputType inputType = InputType.both;
  bool editable = true;
  DateTime date;


  List<String> agama=["Islam","Kristen","Budha","Hindu","Konghuchu"];
  String _agama="Islam";

  void pilihAgama(String value){
    setState((){
      _agama=value;
    });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Buat Surat Pengantar"),
          backgroundColor: Colors.teal,
        ),
        /*appBar: new AppBar(
        leading: new Icon(Icons.keyboard_arrow_left),
        title: new Text("Saran"),
        backgroundColor: Colors.teal,
      ),*/
        body: new ListView(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/tanagochi.jpg"), fit: BoxFit.cover)
              ),
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "No-KTP",
                        labelText: "No-KTP",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Nama Lengkap",
                        labelText: "Nama Lengkap",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Tempat Lahir",
                        labelText: "Tempat Lahir",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new DateTimePickerFormField(
                    inputType: inputType,
                    format: formats[inputType],
                    editable: editable,
                    decoration: new InputDecoration(
                      hintText: "Tanggal Lahir",
                      labelText: 'Tanggal Lahir',
                      hasFloatingPlaceholder: false,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (dt) => setState(() => date = dt),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new Row(
                    children: <Widget>[
                      new Text("Agama",style: new TextStyle(fontSize: 18.0,color: Colors.blue),),
                      new DropdownButton(
                        onChanged: (String value){
                          pilihAgama(value);
                        },
                        value: _agama,
                        items: agama.map((String value){
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    maxLines: 3,
                    decoration: new InputDecoration(
                        hintText: "Keterangan",
                        labelText: "Keterangan",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Created By",
                        labelText: "Created By",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new DateTimePickerFormField(
                    inputType: inputType,
                    format: formats[inputType],
                    editable: editable,
                    decoration: new InputDecoration(
                      hintText: "Date Created",
                      labelText: 'Date Created',
                      hasFloatingPlaceholder: false,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (dt) => setState(() => date = dt),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Modified By",
                        labelText: "Modified By",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0),),
                  new DateTimePickerFormField(
                    inputType: inputType,
                    format: formats[inputType],
                    editable: editable,
                    decoration: new InputDecoration(
                      hintText: "Date Modified",
                      labelText: 'Date Modified',
                      hasFloatingPlaceholder: false,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (dt) => setState(() => date = dt),
                  ),
                  new RaisedButton(
                    child: new Text("OK"),
                    color: Colors.blue[200],
                    onPressed:(){LandingPage();},
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
