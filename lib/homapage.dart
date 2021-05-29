import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, out = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      out = num1 + num2;
    });
  }

  void substraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      out = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      out = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      out = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      out = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: new Text(
            "Calculator",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.all(110.0),
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(40.0),
            ),
            Center(
              child: new Text(
                "OUTPUT : $out",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 25.0),
            ),
            new Container(
              padding: const EdgeInsets.all(0.0),
              child: new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter First Number",
                ),
                controller: t1,
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 0.0),
              child: new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Second Number",
                ),
                controller: t2,
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 35.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: addition,
                  color: Colors.green[300],
                ),
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: substraction,
                  color: Colors.green[300],
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: multiplication,
                  color: Colors.green[300],
                ),
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: division,
                  color: Colors.green[300],
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "CLEAR",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: clear,
                  color: Colors.green[300],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
