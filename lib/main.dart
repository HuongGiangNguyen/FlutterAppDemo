import 'package:candy_app/Screen/MainSc.dart';
import 'package:candy_app/Screen/SCLogin.dart';
import 'package:candy_app/Screen/ScDcheduler.dart';
import 'package:candy_app/Screen/ScEditprofile.dart';
import 'package:candy_app/Screen/ScHome.dart';
import 'package:candy_app/Screen/ScNewtask.dart';
import 'package:candy_app/Screen/ScNotification.dart';
import 'package:candy_app/Screen/ScProfile.dart';
import 'package:candy_app/Screen/ScRegister.dart';
import 'package:candy_app/Screen/ScTodo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
