import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listview(),
    ),
  ));
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Custom"),
      ),
      body: ListView.custom(
          scrollDirection: Axis.vertical,
          childrenDelegate: SliverChildListDelegate([
            Card(
              color: Colors.red,
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("anshad"),
                subtitle: Text("flutter"),
                leading: Image(
                  image: AssetImage(
                      "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
                ),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.yellow,
              shadowColor: Colors.black,
              child: ListTile(
                title: Text("anshad"),
                subtitle: Text("flutter"),
                leading: Image(
                  image: AssetImage(
                      "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
                ),
                trailing: Icon(Icons.call),
              ),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("anshad"),
              subtitle: Text("flutter"),
              leading: Image(
                image: AssetImage(
                    "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
              ),
              trailing: Icon(Icons.call),
            ),
          ])),
    );
  }
}
