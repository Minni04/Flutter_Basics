
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_basics/CenterWidget.dart';

void main(){
  runApp(FlutterApp())  ;
}

class FlutterApp extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: "Flutter App",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch:Colors.blue ,
    ),
    home: Myhomescreen(),
  );
}
}

class Myhomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard") ,
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
        child: Column(children :[ Text("HELLLLLLO!!!" ,style: TextStyle(fontWeight: FontWeight.w700 ,fontFamily:"ghk")) ,
            Text("HELLLLLLO!!!" ,style: TextStyle(fontWeight: FontWeight.w700 ) ) ]),
      )
      ,
    ) ;
  }
}
