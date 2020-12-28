import 'package:candy_app/until/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScEditprofile extends StatefulWidget {
  @override
  _ScEditprofileState createState() => _ScEditprofileState();
}

class _ScEditprofileState extends State<ScEditprofile> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controllerEmail.dispose();
    controllerName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EDIT PROFILE",
          style: TextStyle(letterSpacing: 4, color: Color.fromRGBO(36, 59, 107, 1)),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
        leading: Icon(Icons.search, color: Color.fromRGBO(36, 59, 107, 1)),
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  width: width,
                  height: height / 4,
                  color: Colors.pink[100],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, right: 186),
                    child: Container(
                      width: width - 20,
                      height: 47,
                      decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          controller: controllerName,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Full Name….",
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Email",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                            child: TextField(
                              controller: controllerEmail,
                              decoration: new InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), hintText: "john@email.com"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 135, top: 280),
                          child: FloatingActionButton(
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyDrawer()),
                              );
                            },
                            backgroundColor: Color.fromRGBO(36, 59, 107, 1),
                          ),
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
