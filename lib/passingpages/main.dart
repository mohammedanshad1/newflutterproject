import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/passingpages/dummy.dart';

import 'fruits.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(home:mainpage(),
useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,),
  ));
}
class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("fruits"),),
       body: ListView(children:
       dummy.map((fruits) => TextButton(onPressed: (){
         gotoNext(context,fruits["id"]);
       }, child: Text("${fruits["name"]}"))).toList()),
    );
  }

  void gotoNext(BuildContext context, fruits) {
    Navigator.of(context).pushNamed("secondpage",arguments: fruits);
  }
}
