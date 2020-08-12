import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var db = ["abhi", "RHEL", "ABD", "Python"];
  var index = 0;
  lwclick() {
    setState(() {
      index += 1;
    });

    print('clicked ...');
    print("index changed .");
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PrinT Output On App'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Text(db[index % db.length]),
              FlatButton(onPressed: lwclick, child: Text('ClicK Here')),
              Text("Third"),
            ],
          ),
        ),
      ),
    );
  }
}
