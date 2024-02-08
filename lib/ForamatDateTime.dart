// formatting curr date and time
// here we are using intl library for this purpose

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


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

class Myhomescreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return  Myhomestate();
  }

}

class Myhomestate extends State<Myhomescreen>{

  @override
  Widget build(BuildContext context) {
    var time=DateTime.now() ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blueAccent,
      ),

      body : Column(
          mainAxisAlignment :MainAxisAlignment.center ,
          children: [
        Text("Current Time : ${DateFormat('Hms').format(time)}") ,
        ElevatedButton(onPressed: (){
          setState(() {
          });
        },
            child: Text("Current Time") )]
      ),
    ) ;
  }

}

