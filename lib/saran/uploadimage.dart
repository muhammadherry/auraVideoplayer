import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Upload_Image extends StatefulWidget{
  @override
  _Upload_ImageState createState()=>_Upload_ImageState();
}

class _Upload_ImageState extends State<Upload_Image>{
  File imageFile;
  _openGallery(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState((){
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context)async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState((){
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }
  Future<void> _showChiceDialog(BuildContext context){
   return showDialog(context: context,builder: (BuildContext context){
     return AlertDialog(
       title: Text("Make a choice"),
       content: SingleChildScrollView(
         child: ListBody(
           children: <Widget>[
             GestureDetector(
               child: Text("gaeri"),
               onTap: (){
                 _openGallery(context);
               },
             ),
             GestureDetector(
               child: Text("camera"),
               onTap: (){
                 _openCamera(context);
               },
             )
           ],
         ),
       ),
     );
   });
  }
Widget _decideImageView(){
    if(imageFile == null){
      return Text("no image");
    }
    else{
      Image.file(imageFile,width: 400,height: 400);
    }
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _decideImageView(),
              RaisedButton(onPressed: (){
                _showChiceDialog(context);
              },child: Text("selectimage"),)
            ],
          ),
        ),
      ),
    );
  }
}