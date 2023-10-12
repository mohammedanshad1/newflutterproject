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
  var name=["anshad","jubair","thaslim","akshay","amal"];
  var img=["assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Grid View"),),

      body: GridView.count(crossAxisCount: 3,

    children : List.generate(5, (index) {
    return Card(
    child: Column(
    children: [

      Image(image: AssetImage(img[index]),height: 70,width: 50,),
      Text(name[index],style: TextStyle(color: Colors.black),),


    ],
    )


    );
    }
    )
    )
    );

  }


}