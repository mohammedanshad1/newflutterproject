import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/Staggeredviewexmple.dart';

import 'GridView1.dart';
import 'New.dart';
import 'listviewcostum.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(home: namedroutes(),
        routes: {
             "gridpage":(context) => Gridview(),
              "List":(context) => List_builder(),
        },

        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,)));
}

class namedroutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                     body: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [

                           ElevatedButton(onPressed: (){
                             Navigator.of(context).pushNamed("gridpage");
                           }, child: Text("To grid page")),


                           SizedBox(height: 20,),

                           ElevatedButton(onPressed: (){
                             Navigator.of(context).pushNamed("List");
                           }, child: Text("To list page"))
                         ],
                       ),
                     ),
    );
  }


}