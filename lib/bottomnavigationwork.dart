import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: bottomnavigationwork(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class bottomnavigationwork extends StatefulWidget {
  @override
  State<bottomnavigationwork> createState() => _bottomnavigationworkState();
}

class _bottomnavigationworkState extends State<bottomnavigationwork> {
  var screen = [
    TabBarView(children: [chats()]),
    Text("Channels"),
    Text("profile")
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Conversations",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          backgroundColor: Colors.white,
          actions: [

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(500),color:Colors.red[100]),child:
                    Row(
                      children: [
                        Icon(Icons.add,color: Colors.pink,),

                         Padding(
                           padding: const EdgeInsets.only(right: 10),
                           child: Text("Add new",style:
                           TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                         ),

                      ],
                    )),
                ),


          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wifi_channel_outlined), label: "channels"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
          ],
        ),
        body: Center(child: screen[index]),
      ),
    );
  }
}

class chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Kriss Benwat",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("Today"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Kriss Benwat",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("Today"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Kriss Benwat",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("Yesterday"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Kriss Benwat",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("28 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "rezi makarov",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("24 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "gustav lemelo",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("19 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Bob ryder",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("12 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Emma walkins",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("12 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Bob ryder",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("12 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Bob ryder",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("3 jan"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
            ),
            title: Text(
              "Bob ryder",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "good to know",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text("3 jan"),
          ),
        ],
      ),
    );
  }
}
