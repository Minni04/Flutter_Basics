



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myflutterapp());
}

class myflutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      title: "APP",
      home: DASHSCREEN(),
    );
  }
}

class DASHSCREEN extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ClipRRact"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          decoration: BoxDecoration(
    //         color: Colors.blue  ,
    //         gradient: LinearGradient(
    //           colors: [
    //             Colors.orange ,
    //             Colors.purple ,
    //           ] ,
    //           begin: FractionalOffset(1.0,0.0) ,
    //           end: FractionalOffset(1.0,1.0),
    //           // stops: [0.1,0.1] ,
    // )
            gradient: RadialGradient(
              colors: [Color(0xffa8edea) ,Color(0xfffed6e3)] , center: Alignment.bottomLeft) ,


        ) ,
    )  );
  }
}

//gradient is of two types linear and radial
//yeh tab use krte hai jese strtaing color mko orange den aending color mko red dena
// combination of colors dekhne ke site -> webgradeient



