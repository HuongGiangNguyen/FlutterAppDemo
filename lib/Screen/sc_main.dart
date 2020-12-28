import 'package:candy_app/Screen/sc_scheduler.dart';

import 'package:candy_app/Screen/sc_notification.dart';
import 'package:candy_app/Screen/sc_profile.dart';

import 'package:candy_app/Screen/sc_todo.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:candy_app/Screen/sc_newtask.dart';

class MainSc extends StatefulWidget {
  @override
  _MainScState createState() => _MainScState();
}

class _MainScState extends State<MainSc> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Sctodo(),
    ScScheduler(),
    ScNotification(),
    ScProfile(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Sctodo(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Color.fromRGBO(36, 59, 107, 1),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScNewtask()),
          );
          setState(() {
            currentScreen = Sctodo(); // if user taps on this dashboard tab will be active
            currentTab = 0;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          color: currentTab == 0 ? Colors.blue : Color.fromRGBO(36, 59, 107, 0.5),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ScScheduler(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.timelapse,
                          color: currentTab == 1 ? Colors.blue : Color.fromRGBO(36, 59, 107, 0.5),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ScNotification(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_alert,
                          color: currentTab == 2 ? Colors.blue : Color.fromRGBO(36, 59, 107, 0.5),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ScProfile(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Colors.blue : Color.fromRGBO(36, 59, 107, 0.5),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
