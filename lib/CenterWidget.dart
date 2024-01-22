import 'package:flutter/material.dart';

void main (){
  runApp(FlutterApp()) ;
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY_FLUTTER_APP" ,
      theme: ThemeData(
        primarySwatch: Colors.blue ,
      ),
      home: Myhomescreen(),
    ) ;
  }
}

class Myhomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 100,
          width: 100 ,
          child: Center(
              child: Text('HELLO !!')),
        ),
      )
    ) ;
  }
}
