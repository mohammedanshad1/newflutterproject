import 'package:flutter/material.dart';

void main(){


  runApp(MaterialApp(home: Gridview(),
  ));
}
class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Grid View"),),

      body: GridView.count(crossAxisCount: 3,
    children: [

    ],

    )
    );
  }


}