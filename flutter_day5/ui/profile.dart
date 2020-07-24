import 'package:flutter/material.dart';

myprofile() {
  var mybody = Container(
    width: 300,
    height: 300,
    // color: Colors.red,
    alignment: Alignment.bottomCenter,
    child: Column(
      children: <Widget>[
        Image.network(
            'https://media-exp1.licdn.com/dms/image/C4D03AQHOBbl7MQDQvQ/profile-displayphoto-shrink_400_400/0?e=1600905600&v=beta&t=c1wty4H43Er_6vg5Iv7xB6IMXvGV_zoLZMcJMZUR0oc'),
        Text('Abhi'),
        Text('abhi@lw.com'),
      ],
    ),
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 5,
          color: Colors.grey.shade500,
        )),
  );

  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('Abhi'),
      backgroundColor: Colors.purpleAccent.shade400,
    ),
    body: Center(child: mybody),
  );

  return MaterialApp(home: myhome);
}
