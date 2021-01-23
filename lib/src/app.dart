import 'package:flutter/material.dart';
import 'package:streams_flutter/src/home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stream Demo",
      home: Home(),
    );
  }
}
