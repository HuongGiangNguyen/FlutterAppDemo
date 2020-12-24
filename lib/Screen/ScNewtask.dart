import 'package:candy_app/Screen/MainSc.dart';
import 'package:candy_app/Screen/ScTodo.dart';
import 'package:candy_app/until/Sharepreferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScNewtask extends StatefulWidget {
  @override
  _ScNewtaskState createState() => _ScNewtaskState();
}

class _ScNewtaskState extends State<ScNewtask> {
  PreferencesUtil sharePre = PreferencesUtil();
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  String txt1;
  List<String> lst = [];
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  // _printLatestValue() {
  //   print("Second text field: ${myController.text}");
  // }

  void initState() {
    super.initState();
    sharePre.getList("list").then((value) {
      setState(() {
        lst = value;
      });

      // print("====");
      // print(lst);
    });
    // Start listening to changes.
    // myController.addListener(_printLatestValue);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NEW TASK",
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
                          controller: myController,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Write here",
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
                            "Competed by",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                            child: TextField(
                              decoration: new InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), hintText: "Select a date"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Priotity",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                            child: TextField(
                                decoration: new InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                    suffixIcon: Icon(Icons.merge_type))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "More option",
                            style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Save as alarm",
                                style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                                maxLines: 2,
                              ),
                              Switch(
                                value: isSwitched1,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched1 = value;
                                    // print(isSwitched1);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Show as notification",
                              style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 14),
                              maxLines: 2,
                            ),
                            Switch(
                              value: isSwitched1,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                  // print(isSwitched2);
                                });
                              },
                              activeTrackColor: Colors.lightGreenAccent,
                              activeColor: Colors.green,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 135, top: 50),
                          child: FloatingActionButton(
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              myController.text != ""
                                  ?
                                  //add
                                  lst.add(myController.text)
                                  : AlertDialog(content: Text("không hợp lệ"));
                              sharePre.setList("list", lst);
                              // print(myController.text);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainSc(
                                        // text: myController.text,
                                        )),
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
