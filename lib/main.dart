import 'package:candy_app/Screen/sc_main.dart';
import 'package:candy_app/Screen/sc_login.dart';
import 'package:candy_app/Screen/sc_scheduler.dart';

import 'package:candy_app/Screen/sc_home.dart';

import 'package:candy_app/Screen/sc_notification.dart';
import 'package:candy_app/Screen/sc_profile.dart';

import 'package:candy_app/Screen/sc_todo.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/first': (context) => Sctodo(),
        '/second': (context) => ScScheduler(),
        '/third': (context) => ScNotification(),
        '/fourth': (context) => ScProfile(),
        '/fifth': (context) => SCLogin(),
        '/mainsc': (context) => MainSc(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
