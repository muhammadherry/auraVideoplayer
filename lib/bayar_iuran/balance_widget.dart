import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:warga2/bayar_iuran/home_screen.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'Transfer by',
                  style: TextStyle(
                    color: Color(0xff64676F),
                    fontFamily: 'Regular',
                    fontSize: 16,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Text(
                  '',
                  style: TextStyle(
                    color: Color(0xff464855),
                    fontFamily: 'Regular',
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[

                  SizedBox(height: 20.0),
                  Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/iuran/dana.png',
                                width: 60.0, height: 60.0),
                          ),),
                      )
                  ),
                ],
              ),
              Column(
                children: <Widget>[

                  SizedBox(height: 20.0),
                  Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/iuran/gopay.png',
                                width: 60.0, height: 60.0),
                          ),),
                      )
                  ),
                ],
              ),
              Column(
                children: <Widget>[

                  SizedBox(height: 20.0),
                  Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/iuran/link.png',
                                width: 60.0, height: 60.0),
                          ),),
                      )
                  ),
                ],
              ),
              Column(
                children: <Widget>[

                  SizedBox(height: 20.0),
                  Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/iuran/ovo.png',
                                width: 60.0, height: 60.0),
                          ),),
                      )
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}