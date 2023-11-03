import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: dismissable1(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class dismissable1 extends StatelessWidget{

  var name=["Anshad",
  "Jubair",
  "Thaslim",
  "Najathu"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: ListView.builder(itemBuilder: (context,index){
      return Dismissible(key: ValueKey(name), child: ListTile(

        title: Text(name[index]),
      ),
      background: Container(color: Colors.red,),
      secondaryBackground: Container(color: Colors.yellow,),);
    },itemCount: name.length,),
  );
  }


}