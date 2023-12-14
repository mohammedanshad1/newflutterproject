import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main()
{
  runApp(DevicePreview(
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Layout(),
        );
      }
  ));
}

class Layout  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(backgroundColor:Colors.blue ,title: Text("Layout"),),
        body:StaggeredGrid.count(
          crossAxisCount: 3,
          crossAxisSpacing: 200,
          mainAxisSpacing: 200,

          children:  [
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Card(color: Colors.red,
                  child: Text("0")),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount:2 ,
              mainAxisCellCount: 1,
              child:  Card(color: Colors.yellow,
                  child: Text("0")),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child:  Card(color: Colors.green,
                  child: Text("0")),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child:  Card(color: Colors.black,
                  child: Text("0")),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child:  Card(color: Colors.blue,
    child: Text("0")),
            )],
        )
    );
  }
}