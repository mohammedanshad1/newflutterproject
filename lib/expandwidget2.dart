import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: expand(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class expand extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Expand"),),

      body: Column(children: [
        Container(color: Colors.red,height: 200,width: 300,),

        Expanded(child: Container(color: Colors.green,width: double.infinity,)),

        Expanded(child: Container(color: Colors.brown,width: double.infinity,)),

        Expanded(child: Container(color: Colors.blue,width: double.infinity,))
      ],),
    );
  }


}