import 'package:flutter/material.dart';
import 'package:warga2/bayar_iuran/balance_widget.dart';
import 'package:warga2/bayar_iuran/color.dart';
import 'package:warga2/bayar_iuran/curve_shape.dart';
import 'package:warga2/bayar_iuran/send_money.dart';
import 'package:warga2/bayar_iuran/store_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(0),
      scrollDirection: Axis.vertical,
      child: Container(
        color: Color(0xffFBF3E7),

        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                ClipPath(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    height: 250,
                    decoration: BoxDecoration(
                      gradient:
                      LinearGradient(colors: [colorApp, colorApp_100]),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: <Widget>[

                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'assets/iuran/ovo.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      'Muhammad Herry',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Bold',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      '+62 85815978644',
                                      style: TextStyle(
                                        color: Color(0xffFCDCBE),
                                        fontSize: 15,
                                        fontFamily: 'Regular',
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  clipper: CurveShape(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 140),
                  child: BalanceWidget(),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 480),
                  child: StoreWidget(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}