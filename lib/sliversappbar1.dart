import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: sliversappbar1(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class sliversappbar1 extends StatefulWidget{
  
  
  @override
  State<sliversappbar1> createState() => _sliversappbar1State();
}

class _sliversappbar1State extends State<sliversappbar1> {
  var icn=[(Icons.airplanemode_active),
    (Icons.car_crash_rounded),
    (Icons.bus_alert)];

  int index=0;
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 4,
     child: Scaffold(
       appBar: AppBar(title: Column(
         children: [
           Text("Goa"),

         ],
       ),
       bottom: TabBar(tabs: [
         Tab(child:Icon(Icons.airplanemode_active,),),
         Tab(child:Icon(Icons.car_crash_outlined,),),
         Tab(child:Icon(Icons.bus_alert,),)
       ],),),
      body:TabBarView(
        children: [
          Icon(icn[index],size: 50,)
        ],
      )
     ),
   );
  }
}