import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailedlogo extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("DASHBOARD") ,backgroundColor: Colors.pink),
      body: Hero(tag: "Background", child: Image.asset("assets/images/logo.png" ,height: 300,width:300) ),
    );


  }
}