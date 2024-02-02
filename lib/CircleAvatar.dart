
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
          title: Text("Dashboard"),
          backgroundColor: Colors.blueAccent,
        ),

      body:  Center(
        child: CircleAvatar(
            child: Container(
              height: 80,
              width: 80,
              child: Column(
                children: [
                  Image.asset("assets/images/flu.png" ,height: 55) ,
                  Text("name"),
                ],

                        ),
            ),
          backgroundColor: Colors.lime,
          radius: 80,
        ),
      )
      ,
    ) ;
  }
}
