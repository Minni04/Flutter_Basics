

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

class DASHSCREEN extends StatelessWidget{
  var arrInd=[{"name":"minni", "mob":"7845121452","no":"5"
  },
    {"name":"minni",
      "mob":"7845121452",
      "no":"5"
    },
    {"name":"ginni",
      "mob":"7845121452",
      "no":"6"
    },
    {"name":"bjkl",
      "mob":"7845121452",
      "no":"7"
    }
    ,{"name":"bjkll;",
      "mob":"7845121452",
      "no":"1"
    },
    {"name":"jklop",
      "mob":"4561237890",
      "no":"4"
    } ,
    {"name":"minni",
      "mob":"7845121452",
      "no":"5"
    },
    {"name":"ginni",
      "mob":"7845121452",
      "no":"6"
    },
    {"name":"bjkl",
      "mob":"7845121452",
      "no":"7"
    }
    ,{"name":"bjkll;",
      "mob":"7845121452",
      "no":"1"
    },
    {"name":"jklop",
      "mob":"4561237890",
      "no":"4"
    }] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ClipRRact"),
          backgroundColor: Colors.orange,
        ),
        // body: ListView(
        //   children: arrInd.map((e) => Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(8) ,
        //           color: Colors.blue.shade100,
        //         ),
        //         height: 50,
        //         child: Center(child: Text("$e" ,style: TextStyle(fontWeight: FontWeight.bold),)),),
        //     ),
        //   )).toList(),
        // )

      body: ListView(
        children: arrInd.map((e) =>  ListTile(
            // tileColor: Colors.purple.shade100,
            // hoverColor: Colors.green,
            leading: Icon(Icons.account_box_rounded),
            title: Text(e["name"].toString()),
            subtitle:Text(e["mob"].toString()) ,
            trailing: CircleAvatar(child: Text(e["no"].toString() ,) ,backgroundColor: Colors.cyan) ,
        )).toList(),
    )
    ) ;
  }
}


//this we are using when we want same widgets
// but many times with different index values

