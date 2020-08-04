import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Abhi'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              child: Card(
                color: Colors.grey,
                child: Image.asset('images/Abhi.png'),
                elevation: 5,
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: RaisedButton(
                  onPressed: () {
                    //print('Hii');

                    var aa = AudioCache();
                    aa.play('audio/payabhi.wav');
                  },
                  child: Card(
                    color: Colors.grey,
                    child: Text('ClickHere'),
                    elevation: 5,
                  )),
            )
          ],
        ),
      ),
      //    debugShowCheckedModeBanner: false,
    );
  }
}
