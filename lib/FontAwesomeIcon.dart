
// font awesome is a library that provides more icons like of amazon , google pay
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_call) ,
            FaIcon(FontAwesomeIcons.amazonPay) ,
          ],

        ),
      ),
    );
  }}