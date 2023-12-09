import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/newpassing/movie%20main.dart';

import 'demo.dart';

class movielist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
   final movies=demo.firstWhere((movies) => movies["id"] == id);
    return Scaffold(

      appBar: AppBar(title: Text("Selected Movie"),),
      body: ListView(children: [


        Center(child: Text("${movies["name"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),),
        Image(image: NetworkImage("${movies["image"]}")),
        Text("${movies["description"]}",style: TextStyle(fontSize: 20),),
        Text("${movies["cast"]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

      ],),
    );
  }



}