import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  =>MaterialApp(home: dismissable(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class dismissable extends StatelessWidget{

  var name=["Anshad",
  "Thaslim",
  "Najathu",
  "Akshay",
  ];



  var clr=[Colors.blue,
  Colors.grey,
  Colors.yellow,
  Colors.pink];
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: ListView.builder(itemBuilder: (context,index){
       return Dismissible(key: ValueKey(name), child: ListTile(
         title: Center(child: Text(name[index])),
       ),
       background: Container(color: Colors.cyan,),
       secondaryBackground: Container(color: Colors.yellow,),);
     },
     itemCount: name.length,),
   );
  }


}