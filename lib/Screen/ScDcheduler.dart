import 'package:candy_app/until/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScScheduler extends StatefulWidget {
  @override
  _ScSchedulerState createState() => _ScSchedulerState();
}

class _ScSchedulerState extends State<ScScheduler> {
  bool _value1 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);
  bool _value2 = false;
  void _value2Changed(bool value) => setState(() => _value2 = value);
  bool _value3 = false;
  void _value3Changed(bool value) => setState(() => _value3 = value);
  bool _value4 = false;
  void _value4Changed(bool value) => setState(() => _value4 = value);
  bool _value5 = false;
  void _value5Changed(bool value) => setState(() => _value5 = value);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "SCHEDULER",
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
                SingleChildScrollView(
                  child: Container(
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
                            child: Text("Tomorrow", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _value4,
                                  onChanged: _value4Changed,
                                  activeColor: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Clean Room",
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
                                Checkbox(
                                  value: _value3,
                                  onChanged: _value3Changed,
                                  activeColor: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Take Abby to Doctor",
                                    style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("Sat, Aug 5, 2017", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _value2,
                                  onChanged: _value2Changed,
                                  activeColor: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Sleep in the afternoon",
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
                                Checkbox(
                                  value: _value1,
                                  onChanged: _value1Changed,
                                  activeColor: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Talk to Mom",
                                    style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("Sun, Aug 6, 2017", style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _value5,
                                  onChanged: _value5Changed,
                                  activeColor: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Study UI/UX Design",
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
                            "Upcoming",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "tasks —",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
              ],
            )));
  }
}
