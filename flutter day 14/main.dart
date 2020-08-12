import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  var cmd;
  var webdata;

  myweb(cmd) async {
    var url = "http://192.168.43.210/cgi-bin/allcmd.py?x=${cmd}";
    var r = await http.get(url);

    setState(() {
      webdata = r.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PrinT OutpuT Of Linux Commands On App'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 1.0,
          color: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              Text("Enter Linux Command :"),
              TextField(
                onChanged: (value) {
                  cmd = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Linux Command",
                ),
              ),
              FlatButton(
                  onPressed: () {
                    myweb(cmd);
                  },
                  child: Text('Click Here')),
              Text(webdata ?? "OutpuT Is Coming .."),
            ],
          ),
        ),
      ),
    );
  }
}
