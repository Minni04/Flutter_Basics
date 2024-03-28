


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

class _DASHSCREENState extends State<DASHSCREEN> with SingleTickerProviderStateMixin {
    late Animation animation ;
   late AnimationController animationController ;
   late Animation animationcolor ;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this ,duration: Duration(seconds: 4)) ;
     animation=Tween(begin:0.0  ,end:200.0 ).animate(animationController ) ;
    animationcolor=ColorTween(begin: Colors.cyan,end: Colors.orange ).animate(animationController) ;
     animationController.addListener(() {
       print(animation.value);
       setState(() {

       });
     }) ;


    animationController.forward();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TWEEN"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            height: animation.value,
            width: animation.value,
            color: animationcolor.value,
          ),
        )

    ) ;
  }
}




