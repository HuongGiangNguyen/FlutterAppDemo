import 'dart:math';

import 'package:candy_app/Screen/ScEditprofile.dart';
import 'package:candy_app/until/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScProfile extends StatefulWidget {
  @override
  _ScProfileState createState() => _ScProfileState();
}

class _ScProfileState extends State<ScProfile> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "PROFILE",
            style: TextStyle(letterSpacing: 4, color: Color.fromRGBO(36, 59, 107, 1)),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScEditprofile()),
                  );
                },
                child: Icon(Icons.rate_review, color: Color.fromRGBO(36, 59, 107, 1)))
          ],
        ),
        body: Container(
            width: width,
            height: height,
            child: Stack(
              children: <Widget>[
                Container(
                  width: width,
                  height: height,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 180, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Notification setting", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 14)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Get email notifications",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                                  maxLines: 2,
                                ),
                              ),
                              Switch(
                                value: isSwitched1,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched1 = value;
                                    // print(isSwitched1);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Vibrate on alert",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                                  maxLines: 2,
                                ),
                              ),
                              Switch(
                                value: isSwitched2,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched2 = value;
                                    // print(isSwitched2);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Floss Settings", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 14)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Share profile with other floss users",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                                  maxLines: 2,
                                ),
                              ),
                              Switch(
                                value: isSwitched3,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched3 = value;
                                    //print(isSwitched3);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Show your task completion status",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                                  maxLines: 2,
                                ),
                              ),
                              Switch(
                                value: isSwitched4,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched4 = value;
                                    // print(isSwitched4);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    width: width,
                    height: height / 4,
                    color: Colors.pink[100],
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 40),
                              child: Container(
                                  child: CircleAvatar(
                                backgroundImage: AssetImage('asset/images/avatar.jpg'),
                                radius: 45,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Tiffany Schneider",
                                    style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "tiffany.s@email.com",
                                    style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))),
              ],
            )));
  }
}
