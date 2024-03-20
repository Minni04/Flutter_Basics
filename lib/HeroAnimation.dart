

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/detailedlogo.dart';

void main(){
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "App" ,
      debugShowCheckedModeBanner: false,
      home:homescreen(),

    );
  }}
class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("DASHBOARD") ,backgroundColor: Colors.pink),
      body: InkWell( onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => detailedlogo(),)) ;
      },child: Hero(tag: "Background", child: Image.asset("assets/images/logo.png" ,height: 100,width:100) )),
    );
  }
}
//hero animation tab use hota hai jese agr hum ek choti c image pe click krke badi image khol rhe hai
// toh vo ese do screens na khule ek animation ke saath dusri screen open ho
//thus is heroanimation