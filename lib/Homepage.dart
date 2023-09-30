import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context)
   => MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  ));
}

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView(
          children: [
            Card(color: Colors.red,shadowColor: Colors.blue,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),


              ),
              title: Text("anshad"),
              subtitle: Text("flutter"),
              trailing: Icon(Icons.call),),
            ),
    Card(color:Colors.red,shadowColor:  Colors.orange,
              child: ListTile(
                leading: CircleAvatar(
               backgroundImage:AssetImage(
                      "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
                ),
                title: Text("thaslim"),
                 subtitle: (Text("flutter")),
                trailing: Icon(Icons.call),
              ),
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              title: Text("jubair"),
              subtitle: (Text("flutter")),
              trailing: Icon(Icons.call),
            ),
            ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
              title: Text("akshay"),
              subtitle: (Text("flutter")),
              trailing: Icon(Icons.call),),


          ],
        ));
  }
}
