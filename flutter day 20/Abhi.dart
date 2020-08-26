import 'package:flutter/material.dart';

class AbhiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abhi Profile'),
      ),
      body: RaisedButton(
        child: Text('Abhi'),
        onPressed: () {
          Navigator.pushNamed(context, "/db");
        },
      ),
    );
  }
}
