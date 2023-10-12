import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(home: staggered(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}
class staggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Staggered grid"),),
      body: StaggeredGrid.count(
        crossAxisCount: 3,
        children:  [
             StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(color: Colors.red,
                  child: Text("A",style: TextStyle(color: Colors.black),)),
            ),


             StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(color: Colors.green,
                  child
                  : Text("A",style: TextStyle(color: Colors.black),)),
            ),


             StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(color: Colors.cyan,
                  child: Text("A",style: TextStyle(color: Colors.black),)),
            ),

             StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(color: Colors.purple,
                  child: Text("A",style: TextStyle(color: Colors.black),)),
            ),


             StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Card(color: Colors.blue,

                  child: Text("A",style: TextStyle(color: Colors.black),)),
            ),

        ],
      )
    );
  }


}