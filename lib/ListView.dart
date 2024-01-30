
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_basics/CenterWidget.dart';

void main(){
  runApp(FlutterApp())  ;
}

class FlutterApp extends StatelessWidget {  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: "Flutter App",
    theme: ThemeData(
      primarySwatch: Colors.blue ,
    ),
    home: Myhomescreen(),
  );
}
}

class Myhomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     var names=['ram','sham','vikas' ,'njjk','sggsh'];
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.blueAccent,
        ),
        // ListView is commonly used for displaying a scrollable list of items.
        //The main purpose of a ListView is to present data in a structured way, allowing users to scroll through the items, select one or more items, and interact with the displayed content. Each item in the list typically contains text, icons, or other elements

      // body:ListView(
        //   scrollDirection: Axis.horizontal,
        //   // reverse: true,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('one',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        //     ) ,
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('two',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        //     ) ,
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('three',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        //     ) ,
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('four',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        //     ) ,
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('five',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        //     ) ,
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('six',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        //     )
        //   ],
        // )
      //yeh upar wala listview vesa hi hai jese row and column tha


      // if we want to dynamically set our data then we have to use listview builder
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),) ;
      // }, itemCount: names.length ,itemExtent: 200, reverse: true,)


      // ab agr mughe items mae koi divider chaiye like lines so use separated insetad of builder
      body:  ListView.separated(itemBuilder: (context, index) {
        return Text( names[index] ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 25),) ;
      }, separatorBuilder: (context, index) {
        return Divider(height: 200,thickness: 5,) ;
      }, itemCount: names.length)
      ,


    );}
}
