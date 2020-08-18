import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

myweb() async {
  var url = "http://192.168.43.210/cgi-bin/api.py?x=date";
  var r = await http.get(url);
  var data = r.body;

  var fdata = jsonDecode(data);
  //print(fdata.runtimeType);
  print(fdata['status']);
  print(fdata['output']);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Abhi')),
      body: FlatButton(
        child: Text('Click Here..!!'),
        onPressed: myweb,
      ),
    ));
  }
}
