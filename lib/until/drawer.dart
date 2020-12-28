// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String name;
  String email;
  MyDrawer({this.name, this.email});

  ListTile title(BuildContext context, String str1, String str2) {
    return ListTile(
      title: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '$str1');
        },
        child: Text(
          str2,
          style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> titletext = ["To do", "Scheduler", "Notifications", "Profile", "Log out"];
    List<String> screen = ["/first", "/second", "/third", "/fourth", "/fifth"];
    return Drawer(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 15),
              child: Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/images/avatar.jpg'),
                    radius: 30,
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Tiffany Schneider",
                      style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Divider(),
      ),
      title(context, screen[0], titletext[0]),
      title(context, screen[1], titletext[1]),
      title(context, screen[2], titletext[2]),
      title(context, screen[3], titletext[3]),
      title(context, screen[4], titletext[4]),
    ]));
  }
}
