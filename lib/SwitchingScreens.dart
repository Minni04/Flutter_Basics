import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/IntroPage.dart';

void main(){
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange ,
      ),
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
        backgroundColor: Colors.cyan ,
      ),
      body: Container(
        height: 40,
        width: 40,
        color: Colors.purple ,
      ),
    );
  }
}