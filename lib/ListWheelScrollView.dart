
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
  var flag= true ;
  var arrIndex=[1,2,3,4,5,6,7,8,9,10,11,12] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3D List"),
        backgroundColor: Colors.orange,
      ),
      body:ListWheelScrollView(itemExtent: 200,
        children: arrIndex.map((e) => Container(
          height: 100, width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20) ,
            color:Colors.blue,
          ),
          child: Center(child: Text("$e" , style: TextStyle(fontSize: 14 ,
              color: Colors.white),)),)).toList() ,
        ) ,
    ) ;
  }
}


//list wheel scroll view is used to create 3 d lists jese phon 2 d hai toh 3 d ki illusions hum
// create kr skte kese ?
//1. shadow
//2 .gradient means colors jha pe light pdti vha light hota piche dark hota
//3 . using a curve
// hum is file mae 3 use krege lets see now