import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'New.dart';
import 'listviewcostum.dart';
import 'listviewworknew.dart';
import 'login with validate.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: exmple(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class exmple extends StatefulWidget {
  @override
  State<exmple> createState() => _exmpleState();
}

class _exmpleState extends State<exmple> {
  int index = 0;
  var show = [Text("Home"),
    Text("Search"),
   TabBarView(children: [carousile()]),
    Text("Settings")];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            backgroundColor: Colors.green,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.camera),
              ),
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("New group"),
                  ),
                  PopupMenuItem(
                    child: Text("New broadcast"),
                  ),
                  PopupMenuItem(
                    child: Text("Linked devices"),
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                  ),
                  PopupMenuItem(
                    child: Text("Payments"),
                  ),
                ];
              })
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.group),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Updates"),
                ),
                Tab(
                  child: Text("Calls"),
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Anshad"),
                    accountEmail: Text("anshadk998@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/icons/photo_2023-08-02_17-49-52.jpg"),
                    ),

                  ),ListTile(title: Text("Home"),
                  leading: Icon(Icons.home),),


                  ListTile(title: Text("Account"),
                    leading: Icon(Icons.account_circle_sharp),),



                  ListTile(title: Text("Privacy"),
                    leading: Icon(Icons.privacy_tip),),



                  ListTile(title: Text("Send messages"),
                    leading: Icon(Icons.send),),


                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.green,
            selectedItemColor: Colors.black54,
            unselectedItemColor: Colors.white,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Serach"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp), label: "Account"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
          body: Center(
            child: show[index],
          )),
    );
  }
}

class carousile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: false,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.bounceOut,
        enableInfiniteScroll: true,

      ),
      items: [
        Container(margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)
          ),child: Image(image: AssetImage("assets/icons/453933.jpg"),),
        )
      ],
    ),
  );
  }


}

