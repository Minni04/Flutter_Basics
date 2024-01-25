
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
    theme: ThemeData(
      primarySwatch: Colors.blue ,
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
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("Button 1")) ,
                  ElevatedButton(onPressed: (){}, child: Text("Button 2")) ,
                ],
              ) ,
              Text('M'),
          Text('N'),
          Text('O') ,
          Text('P'),
              ElevatedButton(onPressed: (){}, child: Text('Clixk')) ,
            ],
          ),
        )

    ) ;
  }
}
