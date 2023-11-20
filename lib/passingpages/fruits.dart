import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dummy.dart';

class fruits extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final id =ModalRoute.of(context)?.settings.arguments;
    final fruits=dummy.firstWhere((fruits) => fruits["id"]==id);
return Scaffold(

  appBar: AppBar(title: Text("fruits")),

 body: ListView(children: [
   Center(child: Text("${fruits["name"]}",style: TextStyle(fontSize: 20),)),
   Image(image: NetworkImage("${fruits["images"]}")),
   Text("${fruits["description"]}",style: TextStyle(fontSize: 30),)
 ],),
);
  }


}