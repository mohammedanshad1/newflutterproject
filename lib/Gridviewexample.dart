import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
 => MaterialApp(useInheritedMediaQuery:true,debugShowCheckedModeBanner:false,home: Gridview(),
    ),
  ));
}

class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("grid View"),),
      body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
      ),
      children: [

        CircleAvatar(backgroundImage: AssetImage("assets/icons/483251 (1).jpg"),),
        CircleAvatar(backgroundImage: AssetImage("assets/icons/483251 (1).jpg"),),
        CircleAvatar(backgroundImage: AssetImage("assets/icons/483251 (1).jpg"),),
        CircleAvatar(backgroundImage: AssetImage("assets/icons/483251 (1).jpg"),),
        CircleAvatar(backgroundImage: AssetImage("assets/icons/483251 (1).jpg"),),

      ],
      )



    );
  }



}