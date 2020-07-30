import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main() {
  runApp(MyApp());
}

docker() async {
  var url = "http://192.168.43.253/cgi-bin/normal.py";
  var r = await http.get(url);
  var sc = r.statusCode;
  var data = r.body;
  print(data);
}

dockersvc() async {
  var url = "http://192.168.43.253/cgi-bin/docker.py";
  var r = await http.get(url);
  var sc = r.statusCode;
  var data = r.body;
  print(data);
}

mybody() {
  return Column(
    children: <Widget>[
      RaisedButton(
        onPressed: docker,
        child: Text('click here to check details'),
      ),
      RaisedButton(
        onPressed: dockersvc,
        child: Text('click here to check status docker services'),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web App'),
        ),
        body: mybody(),
      ),
    );
  }
}
