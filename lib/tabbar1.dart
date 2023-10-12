import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: tabbareg(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class tabbareg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Geeks for geeks",
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
          isScrollable: true,
            tabs: [
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("Home")
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("Account")
                  ],
                ),
              ), Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("Alarm")
                  ],
                ),
              ), Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("status")
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("contacts")
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("status")
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text("calls")
                  ],
                ),
              ),

            ],
          ),
        ),
        body: TabBarView(children: [
          Icon(Icons.home)
        ],),
      ),
    );
  }
}
