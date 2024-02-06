// getting input from user


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/ui.dart';
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
        primarySwatch:Colors.blue ,
        textTheme: TextTheme(
            titleLarge: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20) ,
            titleMedium: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16 )
        )
    ),
    home: Myhomescreen(),
  );
}
}

class Myhomescreen extends StatelessWidget {
  @override
   var pssrdtxt=TextEditingController() ;
  var emailtxt=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blueAccent,
      ),

      body : Center(
        child: Container(
          width: 300,
          // height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailtxt,
                 decoration: InputDecoration(
                   hintText:"enter email" ,
                    prefixIcon: Icon(Icons.email),
                     suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_rounded, color: Colors.brown,)),

                     // enabled: false,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20) ),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.greenAccent ,
                      ) ,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20) ),
                      borderSide: BorderSide(
                        width: 5,
                        color: Colors.pink ,
                    ),
                 ),
                   disabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20) ),
                     borderSide: BorderSide(
                       width: 5,
                       color: Colors.blue ,
                   ),
              ) )) ,
              Container(height: 20,),
              TextField(
                controller: pssrdtxt,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter paaswrd",
                  // suffixText: "Enter paasword",
                  border: OutlineInputBorder() ,)
                ,
              ) ,
              ElevatedButton(onPressed: (){  String pssrd=pssrdtxt.text ; String email=emailtxt.text ;
                print(" email is $email  password is $pssrd  ");}, child: Text("LOGIN")) ,
            ],
          ),
        ),
      )
      ,
    ) ;
  }
}
