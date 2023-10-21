
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/customwidget.dart';
void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: customwidget1(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class  customwidget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("custom widget")),
      body:

          Customwidget(onpress: (){

          }
          ,image:
            Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
            ),text:Text ("Anshad"),
            color: Colors.red,
          )


    );
  }



}