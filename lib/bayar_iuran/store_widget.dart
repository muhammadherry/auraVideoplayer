import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'Berita Terkini',
                  style: TextStyle(
                    color: Color(0xff94989E),
                    fontSize: 16,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Text(
                  'VIEW ALL',
                  style: TextStyle(
                    color: Color(0xffF77223),
                    fontSize: 14,
                    fontFamily: 'Bold',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            height: 115,
            width: 500,
            margin: EdgeInsets.only(bottom: 2, top: 2),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width - 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 90,
                        width: 210,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/van.jpg'),fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "Vanessa ",
                            style: TextStyle(
                              color: Color(0xffC7C8CC),
                              fontSize: 16,
                              fontFamily: 'Regular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width - 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 90,
                        width: 210,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/van.jpg'),fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "Vanessa ",
                            style: TextStyle(
                              color: Color(0xffC7C8CC),
                              fontSize: 16,
                              fontFamily: 'Regular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}