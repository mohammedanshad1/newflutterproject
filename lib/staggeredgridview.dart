


import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: staggered(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}
class staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(crossAxisCount: 3, children: [

            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(color: Colors.orange,
                  child: Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
                    fit:BoxFit.fill ,)),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(color: Colors.deepPurple,
                  child: Image(image: AssetImage("assets/icons/483251 (1).jpg"),fit: BoxFit.fill,)),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(color: Colors.amberAccent,
                  child: Image(image: AssetImage("assets/icons/esmihel-muhammad-HeGwwKaK7wQ-unsplash.jpg"),fit: BoxFit.fill,)),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(color: Colors.lightGreen,
                  child: Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),fit: BoxFit.fill,)),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Card(color: Colors.pinkAccent,
                  child: Image(image: AssetImage("assets/icons/nigel-hoare-WTYHayV4-j0-unsplash.jpg"),fit: BoxFit.fill,)),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(color: Colors.greenAccent,
                  child: Image(image: AssetImage("assets/icons/planet-volumes-WJMfoVAw09w-unsplash.jpg"),fit: BoxFit.fill,)),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                  child: Center(child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 50,))),
            ),

          ],
          ),
        )
    );
  }
}