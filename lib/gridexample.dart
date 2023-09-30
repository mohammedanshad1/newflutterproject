import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){


  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery: true,home: Gridview(),
    ),
  ));
}
class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView(gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        maxCrossAxisExtent: 200

      ),
        children: [

          Image.asset("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
          Image.asset("assets/icons/483251 (1).jpg"),
          Image.asset("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),
          Image.asset("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
          Image.asset("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
        ],



      )
    );
  }



}