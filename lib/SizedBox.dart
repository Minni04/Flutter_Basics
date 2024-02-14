//if we want to use  container without using color background color decoration so we can use sized box on that place
// sizedbox --->>sizedbox.sqaure -->> sizedbox.expanded---> sizedbox.shrink
// expanded ke case mae maximum width lelega jo ki infinty hoti hai deafult
// shrink ke case mae minimum width jo ki 0 hoti hai default
//min width min height max height max width set bhi hum kr skte hai constraint box se

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: SizedBox.square(
          dimension: 100,
          child: ElevatedButton(
            onPressed: (){},
            child: Text("click"),
          ),
        ),
      )



      //
      // Center(
      //   child: ConstrainedBox(
      //     constraints: BoxConstraints(
      //       maxHeight: 100 ,
      //       maxWidth: 400,
      //       minHeight: 50 ,
      //       minWidth: 200 ,
      //     ),
      //     child: SizedBox.shrink(
      //         child: ElevatedButton(
      //           onPressed: (){},
      //           child: Text("Click!!"),
      //         ),
      //
      //     ),
      //   ),
      // ),





          //isme sara gayab hojayega kuki min width 0 hai
      // Center(
      //   child: SizedBox.shrink(
      //     child: ElevatedButton(
      //       onPressed: (){},
      //       child: Text("Click!!"),
      //     ),
      //   ),
      // ),




      // Center(
      //   child: SizedBox.expand(
      //     child: ElevatedButton(
      //       onPressed: (){},
      //       child: Text("Click!!"),
      //     ),
      //   ),
      // ),




      // Center(
      //   child: SizedBox(
      //     height: 50,
      //     width: 200,
      //     child: ElevatedButton(
      //       onPressed: (){},
      //       child: Text("Click!!"),
      //     ),
      //   ),
      // ),
    );
  }

}