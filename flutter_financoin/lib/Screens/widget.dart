import 'package:flutter/material.dart';
import 'package:flutter_financoin/Menu/StandardMenu.dart';
import 'package:flutter_financoin/Menu/CurrencyMenu.dart';
import 'package:flutter_financoin/Menu/InterestMenu.dart';

class widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Wrap(
                      spacing: 17,
                      runSpacing: 30.0,
                      children: <Widget>[
                        SizedBox(
                          width:157.0,
                          height: 157.0,
                          child: Card(

                            color: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0,left: 1.0,right: 1.0,bottom: 3),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => StandardMenu()),
                                          );
                                        },
                                        child: Image.asset("images/Standard.png",width:97.0),
                                      )
                                    ]
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:157.0,
                          height: 157.0,
                          child: Card(

                            color: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0,left: 1.0,right: 1.0,bottom: 3),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => InterestMenu()),
                                          );
                                        },
                                      child: Image.asset("images/Interest.png",width:92.0,),
                                      ),

                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:157.0,
                          height: 157.0,
                          child: Card(

                            color: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0,left: 8.0,right: 8.0,bottom: 3),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                      onTap: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => StandardMenu()),
                                );
                                },
                                      child: Image.asset("images/Loan.png",width:66.0,),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:157.0,
                          height: 157.0,
                          child: Card(

                            color: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0,left: 8.0,right: 8.0,bottom: 3),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => CurrencyMenu()),
                                          );
                                        },
                                      child: Image.asset("images/Currency.png",width:92.0,),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:157.0,
                          height: 157.0,
                          child: Card(

                            color: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0,left: 8.0,right: 8.0,bottom: 3),
                                  child: Column(
                                    children: <Widget>[
                                      new Image.asset("images/Tax.png",width:66.0,),
                                      // Text(
                                      //   "Todo List",
                                      //   style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 20.0
                                      //   ),
                                      // ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      // Text(
                                      //   "2 Items",
                                      //   style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.w100
                                      //   ),
                                      // )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:157.0,
                          height: 157.0,
                          child: Card(

                            color: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0,left: 8.0,right: 8.0,bottom: 3),
                                  child: Column(
                                    children: <Widget>[
                                      new Image.asset("images/Discount.png",width:92.0,),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      // Text(
                                      //   "Notes",
                                      //   style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 20.0
                                      //   ),
                                      // ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      // Text(
                                      //   "12 Items",
                                      //   style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.w100
                                      //   ),
                                      // )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
