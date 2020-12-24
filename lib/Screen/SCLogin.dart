import 'package:candy_app/Screen/MainSc.dart';
import 'package:candy_app/Screen/ScRegister.dart';
import 'package:candy_app/until/Account.dart';
import 'package:candy_app/until/Sharepreferences.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SCLogin extends StatefulWidget {
  String email;
  String password;

  SCLogin({this.email, this.password});
  @override
  _SCLoginState createState() => _SCLoginState();
}

class _SCLoginState extends State<SCLogin> {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  List<Account> lstAccount = [];
  void initState() {
    super.initState();
    PreferencesUtil.getListAccount("listAccount", (result) {
      setState(() {
        lstAccount = result;
      });
    });
    // PreferencesUtil().setList("list", []);
    print(lstAccount);
    super.initState();
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
                  "LOGIN",
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
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 26, right: 206),
                        child: Text(
                          "Password",
                          style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 12),
                        ),
                      ),
                      Text(
                        "Forgot?",
                        style: TextStyle(color: Color.fromRGBO(36, 59, 107, 0.5), fontSize: 12),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 311,
                  height: 51,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                      controller: controllerPassword,
                      decoration: new InputDecoration(border: InputBorder.none, suffixIcon: Icon(Icons.add_to_photos))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Account acc;
                  if (controllerEmail.value.text != "" || controllerPassword.value.text != "") {
                    acc = new Account();
                    acc.email = controllerEmail.value.text;
                    acc.password = controllerPassword.value.text;
                    for (var i = 0; i < lstAccount.length; i++) {
                      if (acc.email == lstAccount[i].email && acc.password == lstAccount[i].password) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainSc()),
                        );
                        break;
                      } else {
                        EdgeAlert.show(context, title: 'Note', description: 'Tai khoan khong ton tai', gravity: EdgeAlert.TOP);
                        break;
                      }
                    }
                  } else {
                    EdgeAlert.show(context, title: 'Note', description: 'Nhap day du thong tin', gravity: EdgeAlert.TOP);
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
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 56),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScRegister(
                              // text: myController.text,
                              )),
                    );
                  },
                  child: Text(
                    "New User? Register Here",
                    style: TextStyle(decoration: TextDecoration.underline, color: Color.fromRGBO(36, 59, 107, 1)),
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
