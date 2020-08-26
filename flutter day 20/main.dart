import 'package:Navigate_Screen/database.dart';
import 'package:flutter/material.dart';
import '@bhi.dart';
import 'Abhi.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      // home: MyHome(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "/db": (context) => MyDB(),
        "/abhi": (context) => AbhiApp(),
        "/mydb": (context) => AbhiDB(),
      },
    ),
  );
}
