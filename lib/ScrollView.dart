
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
    debugShowCheckedModeBanner: false,
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
          title: Text("Dashboard") ,
          backgroundColor: Colors.blueAccent,
        ),
        // jab tap ke upar koi action perform karwana ho we use inkwell widget
        // basically agr jese image mae tap karwana ho toh hum iska use kr skte hai
        body: SingleChildScrollView(
          child: Padding(
            padding:   EdgeInsets.all(15),
            child: Column(
               children: [
                 Container(
                   margin: EdgeInsets.only(bottom: 15),
                   height: 300,
                   width: 300,
                   color: Colors.lightGreenAccent,
                 ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            height: 200,
                            width: 200,
                            color: Colors.pink,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            height: 200,
                            width: 200,
                            color: Colors.deepOrangeAccent,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            height: 200,
                            width: 200,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                 Container(
                   margin: EdgeInsets.only(bottom: 15 ),
                   height: 300,
                   width: 300,
                   color: Colors.black,
                 ),
                 Container(
                   margin: EdgeInsets.only(bottom: 15),
                   height: 300,
                   width: 300,
                   color: Colors.yellow ,
                 ) ,
                 Container(
                   margin: EdgeInsets.only(bottom: 15),
                   height: 300,
                   width: 300,
                   color: Colors.lightGreenAccent,
                 )
               ],
            ),
          ),
        )



    );
  }
}
