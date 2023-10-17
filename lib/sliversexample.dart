import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: slivers(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class slivers extends StatelessWidget {

  var color=[

    Colors.green,
  Colors.blue,
    Colors.yellow,
    Colors.teal,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.red,
    Colors.deepPurple,
    Colors.purple,
    Colors.black





  ];

  var img=["assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              pinned: true,
              title: Text("custom scroll view"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
              ],
              bottom: AppBar(
                title: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "search someting",
                        prefixIcon: Icon(Icons.search),suffixIcon: Icon(Icons.camera_alt_outlined)),
                  ),
                ),
              ),flexibleSpace: Container(
            color: Colors.red,
            child: Text("Hi"),),
          ),SliverList(delegate: SliverChildBuilderDelegate((context, index){

            return Container(height: 300,
              child: Card(
                color:color[index] ,
              ),
            );
          },childCount: color.length)),



         SliverGrid(delegate: SliverChildBuilderDelegate((context, index){

          return Container(height: 300,
              child: Image(image: AssetImage(img[index]),),
           );
         },childCount: img.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      )
    );
  }
}
