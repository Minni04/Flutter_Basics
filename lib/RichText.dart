

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
      backgroundColor: Colors.blue,
    ),

      body: Center(
        child: RichText(text: TextSpan(
          style: TextStyle(fontSize: 11 ,color: Colors.blue),
            children: [TextSpan(text:"hello",) ,
              TextSpan(text: "World" ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20 ,color: Colors.blueGrey)) ,
              TextSpan(text: "FLUTTER",style: TextStyle(fontFamily: "ghk",fontSize: 25))
            ]



        )),
      ) ,
    );
}}