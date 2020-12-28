import 'package:candy_app/until/sharepreferences.dart';
import 'package:candy_app/until/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sctodo extends StatefulWidget {
  String text;
  Sctodo({this.text});
  @override
  _SctodoState createState() => _SctodoState();
}

class _SctodoState extends State<Sctodo> {
  List<String> list = [];
  List<bool> value = [];
  void initState() {
    PreferencesUtil().getList("list").then((val) {
      setState(() {
        list = val;

        value = [];
        for (int i = 0; i < list.length; i++) {
          value.add(false);
        }
      });
    });
    // PreferencesUtil().setList("list", []);
    // print(list);
    super.initState();
  }

  bool _value1Changed(bool vvalue, int index) {
    setState(() => value[index] = vvalue);
    return value[index];
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "TO-DO",
          style: TextStyle(letterSpacing: 4, color: Color.fromRGBO(36, 59, 107, 1)),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
        actions: <Widget>[Icon(Icons.search, color: Color.fromRGBO(36, 59, 107, 1))],
      ),
      body: Container(
          width: width,
          height: height,
          child: Column(
            children: <Widget>[
              Container(
                  width: width,
                  height: height / 4,
                  color: Colors.pink[100],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, right: 186),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Today’s",
                          style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "list —",
                          style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: <Widget>[
                        Checkbox(
                          value: value[index],
                          onChanged: (bool newvalue) => setState(() {
                            value[index] = !value[index];
                          }),
                          activeColor: Colors.green,
                        ),
                        Text('${list[index]}', style: TextStyle(color: Color.fromRGBO(36, 59, 107, 1), fontSize: 17))
                      ],
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
