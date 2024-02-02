
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutterapp",
      theme: ThemeData(
        primarySwatch: Colors.blue ,
      ),
      debugShowCheckedModeBanner: false,
      home: myhome(),
    ) ;
  }
}

class myhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

     var arrnames=['ram' ,'sham','vivek','hjkl','hhsjk','ggfdyu' ,'sghhdsdh','minni','ginni','radhika','jhanvi','hjkk','shhyuijnj','sghjj'] ;
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
        backgroundColor: Colors.indigo,
      ),
      body:ListView.separated(itemBuilder:
           (context, index) {
             return ListTile(
               title: Text(arrnames[index]),
               subtitle: Text('numberr'),
               leading: ElevatedButton(onPressed: () {
                  print("tapped") ;
               }, child: Text('${index+1}')),
               trailing: Icon(Icons.add_call),
             ) ;
           },
           separatorBuilder: (context, index) {
            return Divider() ;
          }, itemCount: arrnames.length)

    );
  }
}