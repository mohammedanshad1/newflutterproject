import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customwidgeteg extends StatelessWidget{


  final Color ? clrs;
  final Image ? img;
  final Text ? text;
  VoidCallback onpress;

  customwidgeteg({this.clrs,this.img,this.text,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Card(
        color: clrs,
        child: ListTile(

          leading:img,
          title: text,
        ),
      )
    );
  }



}