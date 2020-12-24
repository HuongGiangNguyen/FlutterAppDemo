import 'package:candy_app/Screen/SCLogin.dart';
import 'package:candy_app/Screen/ScDcheduler.dart';
import 'package:candy_app/Screen/ScNotification.dart';
import 'package:candy_app/Screen/ScProfile.dart';
import 'package:candy_app/Screen/ScTodo.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String name;
  String email;
  MyDrawer({this.name, this.email});
  @override
  Widget build(BuildContext context) {
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
      ListTile(
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sctodo()),
            );
          },
          child: Text(
            "To do",
            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      ListTile(
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScScheduler()),
            );
          },
          child: Text(
            "Scheduler",
            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      ListTile(
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScNotification()),
            );
          },
          child: Text(
            "Notifications",
            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      ListTile(
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScProfile()),
            );
          },
          child: Text(
            "Profile",
            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      ListTile(
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SCLogin()),
            );
          },
          child: Text(
            "Log out",
            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    ]));
  }
}
