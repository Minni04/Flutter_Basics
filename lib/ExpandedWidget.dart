
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

      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.pink,
              height: 100,
            ),
          ) ,
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Container(
            color: Colors.blueGrey,
            height: 100,
          ),
          Container(
            color: Colors.orange,
            height: 100,
          )
        ],
      ),
    ) ;

  }
}