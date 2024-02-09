

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
    var arrcols=[Colors.pink ,Colors.lightGreen ,Colors.orange ,Colors.lime ,Colors.blueGrey ,Colors.amberAccent ,Colors.lightBlueAccent];
    return Scaffold(
      appBar: AppBar(
        title: Text("dashboard"),
        backgroundColor: CupertinoColors.systemGreen,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 50),
        itemBuilder: (context, index) {
        return Container(color: arrcols[index],) ;
      },
        itemCount: arrcols.length,

      )
      // Column(
      //
      //    children :[
      //      Container(
      //      height: 200,
      //      child: GridView.count(crossAxisCount: 4 ,
      //        crossAxisSpacing: 4,
      //        mainAxisSpacing :4,
      //        children: [
      //        Container(color:arrcols[0] ,) ,
      //        Container(color:arrcols[1] ,) ,
      //        Container(color:arrcols[2] ,) ,
      //        Container(color:arrcols[3] ,) ,
      //        Container(color:arrcols[4] ,) ,
      //        Container(color:arrcols[5] ,) ,
      //        Container(color:arrcols[6] ,) ,
      //      ],),
      //    ) ,
      //
      //      Container(height: 100, color: Colors.amber,) ,
      //
      //      Container(
      //        height: 200,
      //        child: GridView.extent(maxCrossAxisExtent: 100,
      //          children: [
      //            Container(color:arrcols[0] ,) ,
      //            Container(color:arrcols[1] ,) ,
      //            Container(color:arrcols[2] ,) ,
      //            Container(color:arrcols[3] ,) ,
      //            Container(color:arrcols[4] ,) ,
      //            Container(color:arrcols[5] ,) ,
      //            Container(color:arrcols[6] ,) ,
      //          ],
      //        ),


      //      ) ,
      //    ]
      //
      // )

    );
  }
}
