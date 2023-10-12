import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(

    builder: (BuildContext context)=>
        MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery:true,home: Gridview(),
        ),
  ));
}
class Gridview extends StatelessWidget{
  var clr=[Colors.red,Colors.yellow,Colors.green,Colors.pinkAccent,Colors.teal,Colors.lightGreen];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("Grid View"),),

        body: GridView.extent(maxCrossAxisExtent: 200,

            children : List.generate(6, (index) {
              return Card(color: clr[index],
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/icons/483251 (1).jpg")),
                      Text("Fc Barcelona",style: TextStyle(fontSize: 20,color: Colors.black),)
                    ],
                  )


              );
            }
            )
        )
    );

  }


}