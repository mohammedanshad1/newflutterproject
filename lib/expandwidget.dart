import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: expandwidget(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class expandwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(title: Text("Expand Widget"),),

    body:Column(children: [
      Container(color: Colors.yellow,height: 100,width: 200,),

      Expanded(child: Container(color: Colors.red,width: double.infinity,),),
      Expanded(child: Container(color: Colors.green,width: double.infinity,),),
      Expanded(child: Container(color: Colors.orange,width: double.infinity,),),

    ],) ,
  );
  }


}