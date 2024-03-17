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

class DASHSCREEN extends StatefulWidget{
  @override
  State<DASHSCREEN> createState() => _DASHSCREENState();
}

class _DASHSCREENState extends State<DASHSCREEN> {
   var aheight =300.00 ;
   var awidth =200.0 ;
   var flag= true ;
    Decoration dec =BoxDecoration(
      color: Colors.cyan ,
      borderRadius: BorderRadius.circular(50),
    ) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [

          AnimatedContainer(duration: Duration(seconds: 3),
            height: aheight,
            width: awidth,
            decoration: dec,
            curve:  Curves.slowMiddle,
          ) ,


          ElevatedButton(onPressed:(){
            if(flag){
              aheight=200.0 ;
             awidth=300.0 ;
             dec= BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               color: Colors.pink ,
             ) ;
            flag= false ;
            }
            else{
              aheight=300.0 ;
              awidth=200.0 ;
              flag= true ;
              dec= BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.cyan ,
              ) ;
            }
            setState(() {

            });
          }, child: Text("ANIMATION")) ,
        ]),
      ),
    ) ;
  }
}