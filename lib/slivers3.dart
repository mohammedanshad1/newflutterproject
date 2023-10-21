import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Sliverseg1(),
    );
  }));
}

class Sliverseg1 extends StatelessWidget {
  var icon = [
    (Icons.hotel),
    (Icons.restaurant),
    (Icons.local_cafe_rounded),
  ];
  var name = ["Hotel", "Restaurant", "Cafe"];

  var color = [Colors.pink, Colors.blue, Colors.orange[400]];

  var image = [
    "assets/icons/photo-of-bedroom-3209035.jpg",
    "assets/icons/bedroom-2631746.jpg",
    "assets/icons/photo-of-bedroom-3209035.jpg",
    "assets/icons/photo-of-bedroom-3209035.jpg",
    "assets/icons/photo-of-bedroom-3209035.jpg",
    "assets/icons/photo-of-bedroom-3209035.jpg",

  ];
  var text = [
    "Awesome room near kakkanad",
    "peacefull room",
    "beautifull room",
    "Awesome room near kakkanad",
    "Awesome room near kakkanad",
    "Awesome room near kakkanad",


  ];
  var sub = [
    "kakkanad kochi",
    "kakkanad kochi",
    "kakkanad kochi",
    "kakkanad kochi",
    "kakkanad kochi",
    "kakkanad kochi",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Icon(Icons.menu),
            ),
            title: Center(child: Text("Type your Location")),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Icon(Icons.favorite),
              )
            ],
            bottom: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Kakkanad,Kochi",
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Card(
                      color: color[index],
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Icon(
                              icon[index],
                              color: Colors.white,
                            ),
                            Text(
                              name[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }, childCount: name.length),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage(image[index]),
                            ),
                          ],
                        ),
                        ListTile(
                          title: Text(
                            text[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            sub[index],
                            style: TextStyle(
                                color: Colors.black,
                              ),
                          ),
                        ),Container(child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [

                                Icon(Icons.star,size: 20,),
                              Icon(Icons.star,size: 20,),
                              Icon(Icons.star,size: 20)
                              ],
                            ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }, childCount: text.length),
          ),
        ],
      ),
    );
  }
}
