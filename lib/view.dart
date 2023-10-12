import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
  => MaterialApp(home: staggeredgrid(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}
class staggeredgrid extends StatelessWidget{
  var name=["anshad","jubair","thaslim"];
  var phone=["7488558","85859956","899695"];
  var image=["assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
  ];

  var color=[Colors.red,
  Colors.yellow,
  Colors.green];
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(title:  Text("staggered View"),),

     body:StaggeredGrid.count(
       crossAxisCount: 4,

       children:  [
         StaggeredGridTile.count(
           crossAxisCellCount: 2,
           mainAxisCellCount: 2,
           child: Card(color: Colors.yellow,
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 50),
                     child: FaIcon(FontAwesomeIcons.instagram,size: 30,color: Colors.redAccent,),
                   ),

                   Text("Instagram",style: TextStyle(color: Colors.redAccent),)
                 ],
               ))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 2,
           mainAxisCellCount: 1,
           child:Card(color: Colors.pinkAccent,
               child: Text("A",style: TextStyle(color: Colors.black),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 1,
           mainAxisCellCount: 1,
           child: Card(color: Colors.blue,
               child: Text("A",style: TextStyle(color: Colors.black),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 1,
           mainAxisCellCount: 1,
           child: Card(color: Colors.green,
               child: Text("A",style: TextStyle(color: Colors.black),))
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 4,
           mainAxisCellCount: 5,
           child: Card(color: Colors.red,
               child: Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"
               ,),fit: BoxFit.fill,))
         ),
         StaggeredGridTile.count(
             crossAxisCellCount: 4,
             mainAxisCellCount: 1,
             child: Card(color: Colors.brown,
                 child: Text("A",style: TextStyle(color: Colors.black),))
         ),
       ],
     )
   );


  }


}
