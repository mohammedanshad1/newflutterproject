import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/Seperatebuilder.dart';
import 'package:newflutterproject/listbuilder.dart';
import 'package:newflutterproject/login%20with%20validate.dart';
import 'package:newflutterproject/stack.dart';

import 'GridView1.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: tabbar(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.green,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                ),
                PopupMenuItem(child: Text("New Contacts")),
                PopupMenuItem(child: Text("chat")),
                PopupMenuItem(child: Text("settings")),
              ];
            }
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.group),),
              Tab(child: Text("chats"),),
              Tab(child: Text("updates"),),
              Tab(child: Text("calls"),),
            ],

          ),
        ),body: TabBarView(children: [

          List_builder(),
        List_seperate(),
        Login_with_validate(),
        Gridview(),
      ],),
      ),
    );
  }
}
