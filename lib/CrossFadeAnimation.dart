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

  var flag= true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DASHBOARD"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            children:[AnimatedCrossFade(
                firstChild: Container(height: 200,width: 200, color: Colors.cyan,),
                secondChild: Image.asset("assets/images/logo.png" ,height: 200,) ,
                crossFadeState: flag?CrossFadeState.showFirst:CrossFadeState.showSecond ,
                duration: Duration(seconds: 6) ,firstCurve: Curves.bounceOut ,secondCurve: Curves.slowMiddle,),
            ElevatedButton(onPressed: (){
              if(flag==true)
              flag=false;
              else flag=true ;
              setState(() {

              });
            }, child: Text("Change"))]  ,
          ),
        ) ,
    ) ;
  }
}