import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: navigationbareg(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class navigationbareg extends StatefulWidget {
  @override
  State<navigationbareg> createState() => _navigationbaregState();
}

class _navigationbaregState extends State<navigationbareg> {
  var screen = [
    Text("Home"),
    TabBarView(children: [lunches()]),
    Text("Cart"),
    Text("Account")
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("NAVIGATION"),
            backgroundColor: Colors.blue,
            bottom: TabBar(
              //isScrollable: true,
              tabs: [
                Tab(
                  child: Text("Lunches"),
                ),
                Tab(
                  child: Text("Cart"),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.lunch_dining), label: "lunches"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp), label: "Accounts"),
            ],
          ),
          body: Center(child: screen[index])),

    );
  }
}

class lunches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              color: Colors.green,

              width: 100,
              child: Column(
                children: [
                  Text("1"),
                  Text("Tuesday"),
                ],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.red,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.blue,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.pink,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.deepPurpleAccent,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.orange,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.pinkAccent,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
              color: Colors.green,

              width: 100,
              child: Column(
                children: [Text("1"), Text("Tuesday")],
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
