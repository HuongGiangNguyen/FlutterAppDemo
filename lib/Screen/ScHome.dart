import 'dart:async';

import 'package:candy_app/Screen/SCLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(new Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SCLogin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      color: Colors.pink[100],
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Image.asset(
              'asset/images/icon.png',
              width: 118,
              height: 123,
            ),
          ),
          Text(
            "Candy",
            style: TextStyle(
              color: Color.fromRGBO(
                36,
                59,
                107,
                1,
              ),
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              "Simple Task Manager",
              style: TextStyle(
                  color: Color.fromRGBO(
                    36,
                    59,
                    107,
                    1,
                  ),
                  fontSize: 12),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Text(
                "@2017 Candy",
                style: TextStyle(
                    color: Color.fromRGBO(
                      36,
                      59,
                      107,
                      0.5,
                    ),
                    fontSize: 12),
              ))
        ],
      ),
    ));
  }
}
