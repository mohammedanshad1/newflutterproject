import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:newflutterproject/foodwork/secondpage.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: foodwork(),
            routes:
        {

          "secondpage":(context)=>secondpage(),
        },
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class foodwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
          title: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text(
              "Search Food",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          trailing: GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_with_validate()));
          },
            child: Container(
             decoration: BoxDecoration(color: Colors.orange,
                 borderRadius: BorderRadius.circular(0),),child: Icon(Icons.person),
            ),
          ),
        ),
        AppBar(
          backgroundColor: Colors.white,
          title: Container(
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            child:ListTile(
              title: Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text("Spice Food",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),leading: Icon(Icons.search,color: Colors.black,),
              trailing: Container(decoration: BoxDecoration(color: Colors.orange,
    borderRadius: BorderRadius.circular(0),

              ),child: Icon(Icons.settings,color: Colors.black,),
            ),
          ),
        ),),
        StaggeredGrid.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: (){Navigator.of(context).pushNamed("secondpage");},
              child: StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Found 80 results ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: CircleAvatar(
                                backgroundImage: AssetImage(
                              "assets/icons/OIP.jpg",
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "One Burger ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "one combo",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "6.72",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(onTap: (){Navigator.of(context).pushNamed("secondpage");},
              child: StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/icons/R.jpg"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "SandWich",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "one Comco",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "8.86",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            GestureDetector(onTap: (){Navigator.of(context).pushNamed("secondpage");},
              child: StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.white,

                        child: Column(
                          children: [
                            SizedBox(height: 150,width: 150,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/icons/maxresdefault.jpg"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Alfahm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("one combo",style: TextStyle(color: Colors.red),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("9.80",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                            )
                          ],
                        ),
                  )),
            ),
            GestureDetector(onTap: (){Navigator.of(context).pushNamed("secondpage");},
              child: StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 150,
                            width: 150,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/icons/9f9913628bd4ccb5d79b2fc51f45d5a6.jpg"),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Broast",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "one Combo",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "6.9",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),

      ],
    ));
  }
}
