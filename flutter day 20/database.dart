import 'package:flutter/material.dart';

class AbhiDB extends StatelessWidget {
  List<String> students = ["Abhi", "Burak", "Eric"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudenTs DB'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              //print('go to home');
              // Navigator.pop(context);
              Navigator.pushNamed(context, "/");
            },
            child: Text('Go tO Home'),
          ),

          //  Text('list of students'),
          ListView.builder(itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text('Test Data'),
              ),
            );
          })
        ],
      ),
    );
  }
}
