import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/newpassing/demo.dart';

import 'movie list.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: movie(),routes: {
    "secondpage":(context)=>movielist(),
  },
    useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class movie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Movies"),),
   body: ListView(
    children:demo.map((movies) => TextButton(onPressed: ()=>gotoNext(
    context,movies["id"]
    ), child:Text("${movies["name"]}") )).toList()
   )
   );
  }

  gotoNext(BuildContext context,movies) {
    Navigator.of(context).pushNamed("secondpage",arguments: movies);

  }





}