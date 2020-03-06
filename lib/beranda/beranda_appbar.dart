import 'package:flutter/material.dart';

class GojekAppBar extends AppBar {
  GojekAppBar()
      : super(
      elevation: 0.25,
      backgroundColor: Colors.white,
      flexibleSpace: _buildGojekAppBar());

  static Widget _buildGojekAppBar() {
    return new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "assets/smart.png",
            height: 50.0,
            width: 100.0,
          ),
          new Container(
            child: new Row(
              children: <Widget>[
                Material(
                  child: InkWell(
                    /*onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Anggota_Pengurus(),
                        ),
                      );
                    },*/
                    child: Container(
                      height: 35.0,
                      width: 35.0,
                      padding: EdgeInsets.all(6.0),
                      decoration: new BoxDecoration(
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(100.0)),
                        /*color: Colors.orangeAccent*/),
                      alignment: Alignment.centerRight,
                      child: new Image(
                        image: AssetImage('assets/info.png'),
                      ),
                    ),
            )

                )


              ],
            ),
          )
        ],
      ),
    );
  }
}