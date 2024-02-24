

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp()) ;
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.indigo ,
      ),
      home: Myhomescreen()
    );
  }}

class Myhomescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("DASHBOARD"),
      backgroundColor: Colors.blue ,
    ),
      body: Center(child: Icon(Icons.add_call ,size: 100,color: Colors.deepOrangeAccent,)),
    );
}}