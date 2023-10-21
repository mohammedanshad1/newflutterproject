import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: slivers1(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class slivers1 extends StatelessWidget {
  var color = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.pinkAccent,
    Colors.tealAccent
  ];
  var image=["assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
    "assets/icons/photo_2023-08-02_17-49-52.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(floating: true,pinned: true,
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
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt_outlined)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
                height: 400,
                child: Card(
                  color: color[index],
                ));
          }, childCount: color.length)),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                    child: Image(image: AssetImage(image[index]),),
                );
              },childCount: image.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20))
        ],
      ),
    );
  }
}
