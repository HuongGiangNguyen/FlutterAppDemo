import 'package:candy_app/until/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScNotification extends StatefulWidget {
  @override
  _ScNotificationState createState() => _ScNotificationState();
}

class _ScNotificationState extends State<ScNotification> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "NOTIFICATION",
            style: TextStyle(letterSpacing: 4, color: Color.fromRGBO(36, 59, 107, 1)),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          actions: <Widget>[Icon(Icons.search, color: Color.fromRGBO(36, 59, 107, 1))],
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
                          child: Text("today", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromRGBO(147, 255, 223, 1)),
                                child: Icon(
                                  Icons.access_time,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Hooray! You have completed all the tasks for today.",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromRGBO(147, 255, 223, 1)),
                                child: Icon(
                                  Icons.access_time,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "A new update is available! Go to Play Store",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Yesterday", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromRGBO(147, 255, 223, 1)),
                                child: Icon(
                                  Icons.access_time,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Hooray! You have completed all the tasks for today.",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromRGBO(147, 255, 223, 1)),
                                child: Icon(
                                  Icons.access_time,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "You missed one task yesterday",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Tue, Aug 1, 2017", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color.fromRGBO(147, 255, 223, 1)),
                                child: Icon(
                                  Icons.access_time,
                                  size: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "You missed one task yesterday",
                                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    width: width,
                    height: height / 4,
                    color: Colors.pink[100],
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60, right: 186),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Alerts &",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "updates —",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
              ],
            )));
  }
}
