

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
   runApp(flutterApp()) ;
}


class flutterApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "Flutter Practice",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue ,
      ) ,
      home: Myhomescreen(),
    ) ;
  }
}

class Myhomescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("dashboard")  ),
      body:Container(
         // color: Colors.pink,
          child: Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.brown ,
                  width: 15 ,
                ) ,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25) ,bottomRight: Radius.circular(25)) ,
                boxShadow:[
                  BoxShadow(color: Colors.green ,blurRadius: 144 ,spreadRadius: 12)
                ] ,
                // shape: BoxShape.circle ,
              ),
            ),
          ),
      ),
    );
  }
}