

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' ;

void main(){
   runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "Flutter App",
       home: Myhomepage(),
       theme: ThemeData(
         primarySwatch: Colors.indigo ,
       ),
     ) ;
  }
}
class Myhomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return Myhomestate();
  }
}

class Myhomestate extends State<Myhomepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("DashBoard") ,
        backgroundColor: Colors.pink ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Set date") ,
            ElevatedButton(onPressed: () async {
              DateTime? datetime= await showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2025));
                  if(datetime!=null) {
                    print("${DateFormat("EEE, M/d/y").format(datetime)}");
                  }
            }, child: Text("select date")) ,
            ElevatedButton(onPressed:() async {
              TimeOfDay? time= await showTimePicker(context: context, initialTime: TimeOfDay.now());
              if(time!=null) {
                print("time selcted is{$time}") ;
              }
            }
                , child: Text("Select Time"))

          ],
        ),
      )
    ) ;
  }

}
