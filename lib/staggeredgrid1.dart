import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
    =>  MaterialApp(home: staggered(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}
class staggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Grid View"),),

      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children:  [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(color: Colors.orange,
                  child: Image(image: AssetImage("assets/icons/colourblind-kevin-NtzHyyixxmo-unsplash.jpg"),fit: BoxFit.fill,),)
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(color: Colors.green,
                child: Image(image: AssetImage("assets/icons/warren-umoh-K7M7dQO-HrA-unsplash.jpg"),fit: BoxFit.fill,),
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(color: Colors.yellow,
                child: Image(image: AssetImage("assets/icons/warren-umoh-VL12rhr4mi0-unsplash.jpg"),fit: BoxFit.fill,)
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(color: Colors.deepPurple,
                child: Image(image: AssetImage("assets/icons/colourblind-kevin-NtzHyyixxmo-unsplash.jpg"),fit: BoxFit.fill,)
              ),),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Card(color: Colors.purple,
                child: Image(image: AssetImage("assets/icons/esmihel-muhammad-HeGwwKaK7wQ-unsplash.jpg"),fit: BoxFit.fill,)
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4,
              child: Card(color: Colors.teal,
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 125),
                  child: Column(

                    children: [
                      Center(child: FaIcon(FontAwesomeIcons.google,size: 30,)),
                      Center(
                        child: Text("Gmsil",style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(color: Colors.lightGreenAccent,
                child: Image(image: AssetImage("assets/icons/planet-volumes-WJMfoVAw09w-unsplash.jpg"),fit: BoxFit.fill,)
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(color: Colors.lightBlueAccent,
                child: Image(image: AssetImage("assets/icons/warren-umoh-K7M7dQO-HrA-unsplash (1).jpg"),fit: BoxFit.fill,)
              ),
            ),],),
      )
      );
  }


}