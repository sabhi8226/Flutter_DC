import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

MyApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  print('hhh');
  Fluttertoast.showToast(
    msg: "Click Here !!",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 24.0,
  );

  return MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Text("Abhi"),
    ),
  ));
}
