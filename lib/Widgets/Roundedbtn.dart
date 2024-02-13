

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
    final String str ;
  final Color? bgcolor;
  final Icon? iconn ;
  final TextStyle? stylee;
  final  VoidCallback? callback ;

  RoundedButton({
required this.str ,
    this.iconn ,
    this.bgcolor=Colors.blue ,
    this.stylee ,
    this.callback ,
});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){
      callback!();
    },
    child: iconn!=null ? Row(
      children: [ iconn!,
        Text(str , style: stylee, ) ,
      ],)
        : Text(str, style: stylee,),

        style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor ,
          shadowColor: bgcolor ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), )
          )

    ),
    ) ;
  }
  
}