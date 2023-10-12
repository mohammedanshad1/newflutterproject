import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: drawer(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Email",),backgroundColor: Colors.red,
        ),
        drawer: Drawer(
            child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Anshad K",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                accountEmail: Text(
                  "anshad@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/icons/photo_2023-08-02_17-49-52.jpg")),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/icons/warren-umoh-K7M7dQO-HrA-unsplash.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/icons/warren-umoh-VL12rhr4mi0-unsplash.jpg"),
                  )
                ],
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/icons/planet-volumes-WJMfoVAw09w-unsplash.jpg"),
                        fit: BoxFit.fill)),
              ),
              ListTile(leading: Icon(Icons.home),
                title: Text("Home"),),

              ListTile(leading: Icon(Icons.settings),
              title: Text("Settings"),),

              ListTile(leading: Icon(Icons.inbox),
              title: Text("Inbox"),),

              ListTile(leading: Icon(Icons.send),
              title: Text("Send"),),

              ListTile(leading: Icon(Icons.star),
              title: Text("Starred"),),

              ListTile(
                leading: Icon(Icons.snooze),
                title: Text("Snoozed"),
              ),

              ListTile(
                leading: Icon(Icons.outbox),
                title: Text("Outbox"),
              ),

              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("Drafts"),
              ),

              ListTile(
                leading: Icon(Icons.all_inbox),
                title: Text("All mail"),
              ),

              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Bin"),
              ),






            ],
          ),
        )));
  }
}
