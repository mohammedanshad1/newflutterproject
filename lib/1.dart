import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newflutterproject/WorkGridview.dart';

import 'expandwidget2.dart';

void main(){


  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: one(),
   useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class one extends StatelessWidget{
  var screen=["anshad",
  "thaslim",
  "amal"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("named routes",style: TextStyle(color: Colors.white),),backgroundColor: Colors.purple,
     ),
     body: Column(children: [

      CarouselSlider(items: [


        Container(margin: EdgeInsets.all(8),
     decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 10,blurStyle: BlurStyle.solid,color: Colors.black)],
         borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage("assets/icons/bedroom-2631746.jpg"))),
         )
      ], options: CarouselOptions( height: 250.0,
    autoPlay: false,
    aspectRatio: 16 / 9,
    autoPlayCurve: Curves.bounceOut,
    enableInfiniteScroll: true,
    ),



      )
   ],),

       );


  }}