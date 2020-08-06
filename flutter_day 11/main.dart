import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(AbhiApp());

String x;

class AbhiApp extends StatelessWidget {
  web(cmd) async {
    print(cmd);
    var url = "http://192.168.43.210/cgi-bin/${cmd}.py";
    var r = await http.get(url);
    print(r.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Abhi'),
              backgroundColor: Colors.purple,
            ),
            body: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 200,
                height: 200,
                color: Colors.blueGrey,
                child: Column(
                  children: <Widget>[
                    Card(
                      child: TextField(
                        onChanged: (val) {
                          x = val;
                        },
                        //   style: TextStyle(height: 3),
                      ),
                    ),
                    Card(
                      child: FlatButton(
                        onPressed: () {
                          web(x);
                        },
                        child: Text('SubmiT'),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
