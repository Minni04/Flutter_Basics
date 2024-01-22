
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
        body: TextButton(onPressed: (){print('Text Button is tapped !') ; },
            child: Text("Click me") ,onLongPress: (){
          print("Now it is long tapped ") ;
    },
        )

    ) ;
  }
}
