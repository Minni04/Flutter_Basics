
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutterapp",
      theme: ThemeData(
        primarySwatch: Colors.blue ,
      ),
      debugShowCheckedModeBanner: false,
      home: myhome(),
    ) ;
  }
}

class myhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
          backgroundColor: Colors.indigo,
      ),
      // body:Padding(
      //   padding: const EdgeInsets.all(45.0),
      //   child: Text("HELLLOO!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
      // ),
    body:Container(
      margin: EdgeInsets.all(14) ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("HELLLOO!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
      ),
      color: Colors.cyanAccent,
    ),

    );
  }
}