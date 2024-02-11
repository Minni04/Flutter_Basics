

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp()) ;
}
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      home: Myhomescreen(),
    );
  }
}

class Myhomescreen extends StatefulWidget {  @override
State<StatefulWidget> createState() {
  return  Myhomestate();
}
}

class Myhomestate extends State<StatefulWidget> {
   void press (){
     print("Clicked") ;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("dashboard"),
          backgroundColor: CupertinoColors.systemGreen,
        ),
        body: ElevatedButton(onPressed: press , child: Text("Click me")) ,
    );
  }}