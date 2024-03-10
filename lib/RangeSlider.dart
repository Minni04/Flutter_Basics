import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()) ;
}

class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "APP",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyhomeScreenState();
  }

}

class MyhomeScreenState extends State<MyHomeScreen>{
   RangeValues values=RangeValues(0, 100) ;
  @override
  Widget build(BuildContext context) {
    RangeLabels labels=RangeLabels(values.start.toString(), values.end.toString());
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: RangeSlider(values: values,
        min :0 ,
        max: 100,
        divisions: 10, activeColor :Colors.lightGreen ,inactiveColor: Colors.lightGreen.shade100,labels: labels, onChanged: (value) {
        values=value ;
        print("${value.start} ${value.end}") ;
          setState(() {

          });
      },),
    ) ;

  }
}
