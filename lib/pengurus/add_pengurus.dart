import 'package:flutter/material.dart';

class add_pengurus extends StatefulWidget {
  @override
  _add_pengurusState createState() => new _add_pengurusState();
}

class _add_pengurusState extends State<add_pengurus> {

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
       appBar: new AppBar(
        title: new Text("Add Pengurus"),
         backgroundColor: Colors.transparent,
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/tanagochi.jpg"), fit: BoxFit.cover)),
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height:10,),
                Expanded(
                    child: Container(

                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height:50,),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      blurRadius:20,
                                      offset: Offset(0,10)
                                  )]
                              ),

                              child: Column(
                                children:<Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: new TextField(
                                      decoration: new InputDecoration(
                                          hintText: "Name",
                                          labelText: "Nama Lengkap"
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child:  new TextField(
                                      decoration: new InputDecoration(
                                          hintText: "No Telp",
                                          labelText: "No Telp"
                                      ),
                                    ),

                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child:   new TextField(
                                      decoration: new InputDecoration(
                                          hintText: "Status",
                                          labelText: "Status"
                                      ),
                                    ),

                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child:   new TextField(
                                      decoration: new InputDecoration(
                                          hintText: "Alamat",
                                          labelText: "Alamat"
                                      ),
                                    ),

                                  ),

                                ],
                              ),
                            ),
                            new Padding(padding: const EdgeInsets.all(10.0),),
                            new RaisedButton(
                              child: new Text("Pesan",style: TextStyle(color: Colors.white),),
                              color: Colors.grey,
                              onPressed: (){},
                            )
                          ],
                        ),
                      ),
                    )
                )
              ]
          )
      ),
    );
  }
}