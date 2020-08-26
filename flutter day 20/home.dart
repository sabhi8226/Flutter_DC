import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('click here for DaTaBase ..'),
            onPressed: () {
              // print('clicked');
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => MyDB()));

              Navigator.pushNamed(context, "/db");
            },
          ),
          RaisedButton(
            child: Text('Click Here For Abhi ..'),
            onPressed: () {
              // print('clicked');
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => MyDB()));

              Navigator.pushNamed(context, "/abhi");
            },
          ),
        ],
      ),
    );
  }
}
