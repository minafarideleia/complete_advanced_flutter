import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  static final MyApp instance = MyApp._internal();

  int currentState = 0;

  factory MyApp() {
    return instance;
  }

  MyApp._internal();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  Container();
  }
}
