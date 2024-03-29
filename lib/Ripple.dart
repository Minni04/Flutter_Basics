




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
  // late Animation animation ;
  late AnimationController animationController ;
  // late Animation animationcolor ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this ,duration: Duration(seconds: 4)) ;
    animationController.addListener((){
      // print(animation.value);
      setState(() {
      });
    }) ;
    animationController.forward();
  }

   var arrInd=[100.0,150.0,200.0,250.0,300.0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RIPLE"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: arrInd.map((e) => Container(
              height: e*animationController.value,
              width: e*animationController.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle ,
                color: Colors.blue.withOpacity(1-animationController.value),
              ),
            )).toList(),
          ),
        )

    ) ;
  }
}




