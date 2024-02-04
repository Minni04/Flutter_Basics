
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/ui.dart';
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
      textTheme: TextTheme(
        titleLarge: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20) ,
        titleMedium: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16 )
      )
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

      body: Column(
        children: [
          Text("Hello GUyyz" ,style: Theme.of(context).textTheme.titleLarge),
          Text("Hello GUyyz" ,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.blue)),
          Text("Hello GUyyz" , style :Theme.of(context).textTheme.titleMedium),
          Text("Hello GUyyz" ,style:textstyle11()),
        ],
      )
      ,
    ) ;
  }
}
