import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:warga2/landingpage_view.dart';

class form extends StatefulWidget{
  @override
  _formState createState() => new _formState();
}

class _formState extends State<form>{
  final formats = {
    InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
    InputType.date: DateFormat('yyyy-MM-dd'),
    InputType.time: DateFormat("HH:mm"),
  };
  InputType inputType = InputType.both;
  bool editable = true;
  DateTime date;

/*  String _jk = "";*/
List<String> agama=["Suka","Tidak Suka"];
String _agama="Suka";
/*  void _pilihJk(String value){
    setState(() {
      _jk=value;
    });
  }
  void*/ pilihAgama(String value){
    setState((){
      _agama=value;
    });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Saran"),
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
                  maxLines: 3,
                  decoration: new InputDecoration(
                      hintText: "Foto",
                      labelText: "Foto",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new Row(
                  children: <Widget>[
                    new Text("Kategori",style: new TextStyle(fontSize: 18.0,color: Colors.blue),),
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
                  decoration: new InputDecoration(
                      hintText: "Createc By",
                      labelText: "Createc By",
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

               //Radio Button
               /* new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new RadioListTile(
                  value: "Laki-Laki",
                  title: new Text("Laki-Laki"),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihJk(value);
                  },
                  activeColor: Colors.red,
                ),
                new RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihJk(value);
                  },
                  activeColor: Colors.red,
                ),*/
                /*new Padding(padding: new EdgeInsets.only(top: 20.0),),
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
                ),*/
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
