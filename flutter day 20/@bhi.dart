import 'package:flutter/material.dart';

class MyDB extends StatelessWidget {
  List<String> students = [
    "Abhi",
    "Burak",
    "Jack",
    "Linux",
    "Anshu",
    'Shrawan',
    'Eric',
    'Hande',
    'SumO',
    'plmk',
    'ekkv',
    'matus2',
    'aws',
    'OpenStack',
    'Terraform'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StudenTs DB'),
        ),
        body: ListView.builder(
            itemCount: students.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(students[index]),
                  subtitle: Text('Id Of StudenT ...!'),
                  // leading: Icon(Icons.accessibility),
                  leading: CircleAvatar(
                    child: Text('A'),
                  ),
                  trailing: RaisedButton(
                    child: Text("..."),
                    onPressed: () {
                      Navigator.pushNamed(context, "/abhi");
                    },
                  ),
                ),
              );
            }));
  }
}
