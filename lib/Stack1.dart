import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: stackeg(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}

class stackeg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>stackState();


}
class stackState extends State<stackeg>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Stack(children: [Positioned(child: Container(



         color: Colors.grey,)),
        Positioned(child: Container(
          color: Colors.yellow,height: 700,width: 400,
        ),top: 300,)
, Positioned(child:
        Container(child:Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),fit: BoxFit.fill,),
          color: Colors.white70,height: 150,width: 150,)
        ,top: 250,left: 150,right: 130,),Positioned(child: Container(child:

        Text("Anshad k",style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 25),
        ),),top: 400,left: 150,)
     ]));


  }


}