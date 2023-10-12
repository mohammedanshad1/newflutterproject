import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
     => MaterialApp(home: stack(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}
class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: Stack(
      children: [Positioned(child: Container(color: Colors.yellow,)),
        Positioned(child:
      Container(color: Colors.white70,height: 300,width: 400,),) ,
        Positioned(child:
    Container(child:
    Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),fit: BoxFit.fill,),
        color: Colors.black,height: 100,width: 100,)
          ,bottom: 500 ,right: 150,
          ),




      ],
    ),
  );
  }


}