
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
        // jab tap ke upar koi action perform karwana ho we use inkwell widget
        // basically agr jese image mae tap karwana ho toh hum iska use kr skte hai
        body: InkWell(
          onTap: (){
            print("Conatiner is tapped") ;
          },
          onDoubleTap: (){
            print("Conatiner is double tapped") ;
          },
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blueGrey,
            child : Center(
              child: InkWell( onTap :(){
                print("This is text")  ;} ,
                child: Text("This is child") ,
                        ),
            ),
        )

    ) );
  }
}
