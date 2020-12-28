import 'package:candy_app/until/account.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:candy_app/until/sharepreferences.dart';

import 'sc_login.dart';

class ScRegister extends StatefulWidget {
  @override
  _ScRegisterState createState() => _ScRegisterState();
}

class _ScRegisterState extends State<ScRegister> {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  List<Account> lstAccount = [];
  PreferencesUtil sharePre = PreferencesUtil();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  // _printLatestValue() {
  //   print("Second text field: ${controllerEmail.text}");
  //   print("Second text field: ${controllerPassword.text}");
  // }

  void initState() {
    super.initState();
    PreferencesUtil.getListAccount("listAccount", (result) {
      setState(() {
        lstAccount = result;
      });
    });

    // Start listening to changes.
    // controllerPassword.addListener(_printLatestValue);
    // controllerEmail.addListener(_printLatestValue);
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "REGISTER",
                  style: TextStyle(letterSpacing: 4, color: Color.fromRGBO(36, 59, 107, 1), fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 166, right: 275),
                child: Text(
                  "Email",
                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 311,
                  height: 51,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                      controller: controllerEmail,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 254),
                child: Text(
                  "Password",
                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 311,
                  height: 51,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  child: TextField(controller: controllerPassword, decoration: new InputDecoration(border: InputBorder.none)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 210),
                child: Text(
                  "Confirm Password",
                  style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 311,
                  height: 51,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  child: TextField(decoration: new InputDecoration(border: InputBorder.none)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("aa");
                  bool check = true;
                  Account acc;
                  print(controllerEmail.value);
                  if (controllerEmail.value.text != "" && controllerPassword.value.text != "") {
                    print("object");
                    acc = new Account();
                    acc.email = controllerEmail.value.text;
                    acc.password = controllerPassword.value.text;
                    print(lstAccount);
                    for (var i = 0; i < lstAccount.length; i++) {
                      if (acc.email == lstAccount[i].email) {
                        check = false;
                        break;
                      }
                    }
                    if (check) {
                      lstAccount.add(acc);
                      PreferencesUtil().setListAccount("listAccount", lstAccount);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SCLogin()),
                      );
                    } else {
                      EdgeAlert.show(context, title: 'Note', description: 'nhap lai Email', gravity: EdgeAlert.TOP);
                    }
                  } else {
                    EdgeAlert.show(context, title: 'Note', description: 'ban chua nhap du lieu', gravity: EdgeAlert.TOP);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    width: 311,
                    height: 51,
                    decoration: BoxDecoration(color: Color(0xff243B6B), borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  width: 180,
                  height: 48,
                  child: Text(
                    "By registering, you automatically support the term and policies of candy app",
                    style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1)),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SCLogin()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    child: Text(
                      "Have account? Login",
                      style: TextStyle(
                          decoration: TextDecoration.underline, color: Color.fromRGBO(36, 59, 107, 1), fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
