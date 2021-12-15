import 'package:flutter/material.dart';
import 'package:flutter_financoin/Screens/Dashboard.dart';
import 'package:flutter_financoin/Menu/Standard.dart';
import 'package:flutter_financoin/Screens/budget.dart';
import 'package:flutter_financoin/Screens/chat.dart';
import 'package:flutter_financoin/Screens/forex.dart';
import 'package:flutter_financoin/Authentication/LoginScreen.dart';

import 'Interest.dart';

class InterestMenu extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
const maincolor = Color(0xFF0177fe);

class _HomeState extends State<InterestMenu> {

  int currentTab = 3;
  final List<Widget> screens = [
    dashboard(),
    budget(),
    interest(),
    forex(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = interest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: maincolor, //change your color here
        ),
        elevation: 0,
        backgroundColor:Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app,
              color: maincolor,),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())
              );
            },
          )
        ],
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = chatbot();
            currentTab = 5;
          });
        },
        child: Icon(Icons.support),
        backgroundColor: maincolor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? maincolor : Colors.grey,
                        ),
                        Text('Home',
                          style: TextStyle(
                              color: currentTab == 0 ? maincolor : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = budget();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: currentTab == 1 ? maincolor : Colors.grey,
                        ),
                        Text('Budget',
                          style: TextStyle(
                              color: currentTab == 1 ? maincolor : Colors
                                  .grey
                          ),
                        )
                      ],

                    ),

                  ),

                ],

              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = interest();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calculate_sharp,
                          color: currentTab == 3 ? maincolor : Colors.grey,
                        ),
                        Text('Widget',
                          style: TextStyle(
                              color: currentTab == 3 ? maincolor : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = forex();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.question_answer,
                          color: currentTab == 4 ? maincolor : Colors.grey,
                        ),
                        Text('FAQ',
                          style: TextStyle(
                              color: currentTab == 4 ? maincolor : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),

                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}