// jese hum row mae diff conatiners lete hai toh vo overflow pixel dikhata hai but usse thik krne ke lie we use single scrol widget
// pr agr hume ek hi screen pe dikhane ko saare conatiners mtlb ki width screen ki bharne ke baad niche aae conatiners
// so we use wrap widget


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Widgets/Roundedbtn.dart';

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
  }}

class Myhomescreen extends StatefulWidget {  @override
State<StatefulWidget> createState() {
  return  Myhomestate();}}
class Myhomestate extends State<StatefulWidget> {
  void press (){
    print("Clicked") ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dashboard"),
        backgroundColor: CupertinoColors.systemGreen,
      ),
      body: Container(
        width: double.infinity,
        child: Wrap(
          spacing: 5,
          runSpacing: 5 ,
          alignment: WrapAlignment.center,
          children: [
            Container(
              color: Colors.pinkAccent,
              height: 70,
              width: 70,
            ) ,
            Container(
              color: Colors.orange,
              height: 70,
              width: 70,
            ) ,
            Container(
              color: Colors.greenAccent,
              height: 70,
              width: 70,
            ),
            Container(
              color: Colors.lightGreen,
              height: 70,
              width: 70,) ,
            Container(
              color: Colors.blue,
              height: 70,
              width: 70,
            ) ,
            Container(
              color: Colors.pinkAccent,
              height: 70,
              width: 70,
            ) ,
            Container(
              color: Colors.brown,
              height: 70,
              width: 70,
            ),
            Container(
              color: Colors.purple,
              height: 70,
              width: 70,
            ),
            Container(
              color: Colors.pinkAccent,
              height: 70,
              width: 70,
            )
          ],
        ),
      )
    );
  }}