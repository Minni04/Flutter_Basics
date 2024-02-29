// this is done to know the basic use of set state function

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/StatefulWidget.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
        home:MyhomePage());
  }
}

class MyhomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyhomepageState();
  }
}

class MyhomepageState extends State<MyhomePage>{
  var no1controller=TextEditingController() ;
  var no2controller=TextEditingController() ;
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1controller,
              ) ,
              TextField(
                keyboardType: TextInputType.number,
                controller: no2controller,
              ) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    var  no1= int.tryParse(no1controller.text);
                    var  no2= int.tryParse(no2controller.text);
                    var sum=0;
                    if(no1!=null&&no2!=null)
                   sum=no1+ no2;
                   setState(() {

                   });
                   result="Sum of $no1 and $no2 is   $sum" ;
                  }, child: Text("ADD")) ,
                  ElevatedButton(onPressed: (){
                    var  no1= int.tryParse(no1controller.text);
                    var  no2= int.tryParse(no2controller.text);
                    var diff=0;
                    if(no1!=null&&no2!=null)
                      diff=no1- no2;
                    setState(() {
                    });
                    result="diff of $no1 and $no2 is   $diff" ;
                  }, child: Text("SUB")) ,
                  ElevatedButton(onPressed: (){
                    var  no1= int.parse(no1controller.text.toString());
                    var  no2= int.parse(no2controller.text.toString());
                    var mul=0;
                    if(no1!=null&&no2!=null)
                      mul=no1*no2;
                    result="Multiply of $no1 and $no2 is   $mul" ;
                    setState(() {
                    });

                  }, child: Text("MUL")) ,
                  ElevatedButton(onPressed: (){
                    var  no1= double.parse(no1controller.text.toString());
                    var  no2= double.parse(no2controller.text.toString());
                    var div;
                    if(no1!=null&&no2!=null)
                      div=no1/no2 ;


                    result="diff of $no1 and $no2 is   ${div.toStringAsFixed(2)} " ;
                    setState(() {
                    });

                  }, child: Text("DIV")) ,
                ],
              ) ,
              Text(result ,style: TextStyle(fontSize: 20 ,color: Colors.lightGreen)) ,
            ],
          ),
        ),
      ),
    );
  }
}