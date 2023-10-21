import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/customwidget2.dart';

void main(){


  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: customwidget3(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false)));
}
class customwidget3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Custom widget"),),

      body: customwidgeteg(onpress: (){

      },
        clrs: Colors.red,
        img: Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),),
        text: Text("Anshad k"
        ),

      ),
    );
  }


}