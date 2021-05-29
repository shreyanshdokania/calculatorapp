import 'package:flutter/material.dart';
import 'homapage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My own calculator",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: new HomePage(),
    );
  }
}
