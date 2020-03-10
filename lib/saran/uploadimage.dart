/*
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
*/
/*

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Image picker',
      home: Upload_Image(title:'image picker'),
      debugShowCheckedModeBanner: false,
    );
  }
}
*//*



class Upload_Image extends StatefulWidget{
  Upload_Image({Key key, this.title}): super(key:key);

  final String title;

  @override
  _Upload_ImageState createState()=>_Upload_ImageState();
}

class _Upload_ImageState extends State<Upload_Image>{
File _image;

Future getImageFromCam() async{
  var image = await ImagePicker.pickImage(source: ImageSource.camera);
  setState((){
    _image = image;
  });
}
Future getImageFromGallery() async{
  var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
    _image = image;
  });
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: Center(
              child: _image == null
              ? Text('no image selected')
              : Image.file(_image),
            ),
          ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    FloatingActionButton(
      onPressed: getImageFromCam,
      tooltip: 'pick image',
      child: Icon(Icons.add_a_photo),
    ),
    FloatingActionButton(
      onPressed: getImageFromCam,
      tooltip: 'pick image',
      child: Icon(Icons.wallpaper),
    ),
  ],
)
        ],
      ),

    );
  }
}*/
