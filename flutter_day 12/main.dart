import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(AbhiApp());

web(dosname, dimagename) async {
  //print(cmd);
  var url = "http://192.168.43.210/cgi-bin/web.py?x=${dosname}&y=${dimagename}";
  var r = await http.get(url);
  print(r.body);
}

class AbhiApp extends StatelessWidget {
  String dosname;
  String dimagename;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Launch Docker Container'),
              backgroundColor: Colors.purple,
            ),
            body: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 300,
                height: 250,
                color: Colors.purple[200],
                child: Column(
                  children: <Widget>[
                    TextField(
                      onChanged: (val) {
                        dosname = val;
                      },
                      autocorrect: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Os Name",
                      ),
                    ),
                    TextField(
                      onChanged: (val) {
                        dimagename = val;
                      },
                      autocorrect: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Image Name",
                      ),
                    ),

                    //   ),

                    Card(
                      child: FlatButton(
                        onPressed: () {
                          web(dosname, dimagename);
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
