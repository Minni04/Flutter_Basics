
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

      // card widget is used to create 3d illusions isse hum shadow dete hai
      // card widget ek card dikhayega jo elevated hoga
      body : Center(
        child: Card(
          shadowColor: Colors.blueGrey,
          elevation: 25,
          child: Container(
            color: Colors.blueGrey,
            child: TextButton( onPressed: () {
                print("hello") ; } , child: Text("jkl" ,style: TextStyle(color: Colors.brown),) ,
             ),
          ),
        ),
      )
      ,
    ) ;
  }
}
