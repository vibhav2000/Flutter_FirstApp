import 'package:flutter/material.dart';

myApp() {
  var mytext = Text(
    'Hello World of FlUtTeR',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  mypress() {
    print("myicon clicked..");
  }

  mypress2() {
    print("Email icon clicked...");
  }

  var myicon = Icon(Icons.bookmark);
  var MyEmailIcon = Icon(Icons.email);

  var MyIconButton = IconButton(icon: myicon, onPressed: mypress);
  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress2);

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.cyan[600],
    leading: MyIconButton,
    actions: <Widget>[
      MyEmailButton,
    ],
  );
  var url =
      'https://raw.githubusercontent.com/vibhav2000/flutter_repo/master/gmXcHZ6.jpg';
  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
    backgroundColor: Colors.grey[600],
  ); //1st layer on main base

  var mainoutput = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  ); //main base of app

  return mainoutput;
}
