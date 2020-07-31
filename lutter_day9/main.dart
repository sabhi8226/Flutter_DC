import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var y = () {
  print("Hi");
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey,
      body: RaisedButton(
        onPressed: () => print('hi'),
        child: Text('HellO EveryOne ..!!'),
      ),
      appBar: AppBar(
        title: Text("WhiTe PiKachu"),
        backgroundColor: Colors.purple,
      ),
    ));
  }
}
