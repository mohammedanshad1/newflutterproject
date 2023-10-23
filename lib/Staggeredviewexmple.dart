import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: grid4(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}
class grid4 extends StatelessWidget{

  var txt=["Anshad",
  "Thaslim",
  "Jubair"];

  var txt1=["flutter",
  "python",
  "php"];
  var icon=[Icons.flutter_dash,
  Icons.code,
  Icons.php];

  var clr=[Colors.red,
  Colors.green,
  Colors.yellow];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Grid View"),),

     body:StaggeredGrid.count(
       crossAxisCount: 4,

       children: [
         StaggeredGridTile.count(
           crossAxisCellCount: 2,
           mainAxisCellCount: 2,
           child: Card(color: Colors.yellow,
               child: Text("1",style: TextStyle(color: Colors.blue),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 2,
           mainAxisCellCount: 1,
           child: Card(color: Colors.green,
               child: Text("1",style: TextStyle(color: Colors.red),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 1,
           mainAxisCellCount: 1,
           child: Card(color: Colors.brown,
               child: Text("1",style: TextStyle(color: Colors.green),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 1,
           mainAxisCellCount: 1,
           child: Card(color: Colors.yellow,
               child: Text("1",style: TextStyle(color: Colors.black87),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 4,
           mainAxisCellCount: 2,
           child: Card(color: Colors.green,
               child: Text("1",style: TextStyle(color: Colors.blue),))
         ),
         StaggeredGridTile.count(
             crossAxisCellCount: 4,
             mainAxisCellCount: 2,
             child: Card(color: Colors.pink,
                 child: Text("1",style: TextStyle(color: Colors.blue),))
         ),
         StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child: Card(color: Colors.green,
                 child: Text("1",style: TextStyle(color: Colors.blue),))
         ),
         StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child: Card(color: Colors.greenAccent,
                 child: Text("1",style: TextStyle(color: Colors.blue),))
         ),
       ],
     ),
   );
  }


}