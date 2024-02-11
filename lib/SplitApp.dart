

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp()) ;
}
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      home: Myhomescreen(),
    );
  }
}

class Myhomescreen extends StatefulWidget {  @override
State<StatefulWidget> createState() {
  return  Myhomestate();
}
}

class Myhomestate extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    var arrcols = [
      Colors.pink,
      Colors.lightGreen,
      Colors.orange,
      Colors.lime,
      Colors.blueGrey,
      Colors.amberAccent,
      Colors.lightBlueAccent
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("dashboard"),
        backgroundColor: CupertinoColors.systemGreen,
      ),
      body: Column(
          children: [
          first() ,
         second(),
       third() ,
    fourth() ,

    ],
    )

    );
  }}


    class first extends StatelessWidget{
       @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
          return CircleAvatar(radius:50,backgroundColor: Colors.pink,) ;
        },),
      ),
    );
  }
    }


class second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 4,
      child: Container(
        color: Colors.pinkAccent,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(title: Text("My Name"),
              subtitle: Text("hello"),
              leading: Icon(Icons.account_box_rounded),
              trailing: Icon(Icons.add_call),),
          );
        },),
      ),
    ) ;

  }
}

class third extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 2,
      child: Container(
        color: Colors.lime,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 2, mainAxisSpacing:2 ,maxCrossAxisExtent: 100) ,children: [
            Container(color: Colors.cyan,),
            Container(color: Colors.lightGreen,),
            Container(color: Colors.greenAccent,),
            Container(color: Colors.orange,),
            Container(color: Colors.pinkAccent,),
            Container(color: Colors.cyan,),
            Container(color: Colors.orange,),
            Container(color: Colors.green,),
            Container(color: Colors.cyan,)
          ]),
        ),
      ),
    );
  }
}
class fourth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
          return CircleAvatar(radius:50,backgroundColor: Colors.pink,) ;
        },),
      ),
    );
  }
}
