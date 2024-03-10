
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ConstraintBox.dart';
import 'package:flutter_basics/SwitchingScreens.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
        backgroundColor: Colors.greenAccent ,
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()) );
          }, child: Text("Welcome!!")) ,
          SizedBox(width: 10,height: 20,) ,
          Text("MINNNI")
        ]),
      ),
    ) ;
  }
}