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
   var isopacity =1.0 ;
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
            AnimatedOpacity(opacity: isopacity, duration: Duration(seconds: 2) ,child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),) ,
            ElevatedButton(onPressed: (){
              if(flag){
                isopacity=0.0 ;
                flag=false ;
              }else{
                isopacity=1.0 ;
                flag=true ;
              }

              setState(() {

              });
            }, child: Text("Close")) ,
          ],
        ),
      )

    ) ;
  }
}