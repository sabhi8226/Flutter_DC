import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    "MyFirstApp",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  mypress() {
    print("HellO CliCkeD");
  }

  var myicon = Icon(Icons.email);
  var myicon2 = Icon(
    Icons.add_to_photos,
  );

  var mybutton = IconButton(
    icon: myicon,
    onPressed: mypress,
  );

  var mybutton1 = IconButton(
    icon: myicon2,
    onPressed: mypress,
  );

  var mybar = AppBar(
    title: mytext,
    backgroundColor: Colors.red,
    leading: Text("Abhi"),
    actions: <Widget>[mybutton, mybutton1],
  );

  var myimage = Image.network(
    "https://github.com/a1-s2/Task1/raw/master/sir.jpeg",
    width: double.infinity,
    height: double.infinity,
  );

  var scaffold = Scaffold(
    appBar: mybar,
    body: myimage,
    backgroundColor: Colors.blueGrey,
  );

  var my = scaffold;

  var design = MaterialApp(
    home: my,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
