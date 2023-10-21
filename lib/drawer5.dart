import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: bottomnavigation7(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class bottomnavigation7 extends StatefulWidget {
  @override
  State<bottomnavigation7> createState() => _bottomnavigation7State();
}

class _bottomnavigation7State extends State<bottomnavigation7> {

  var show=[TabBarView(children:[launch()]),
  Text("Inbox"),
  Text("Settings"),
  Text("Account")];
  int index=1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
          backgroundColor: Colors.red,

        ),
       bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.green,selectedItemColor: Colors.black,unselectedItemColor: Colors.red,
        currentIndex: index, onTap: (tapindex) {
           setState(() {
             index = tapindex;
           });
         },
         type: BottomNavigationBarType.fixed,
         items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.inbox),label: "Inbox"),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
         BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account"),

       ],),
       body: Center(child: show[index]),

      ),
    );
  }
}
class launch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(length: 3,
    child: Scaffold(

      body: ListView(children: [
        ListTile(
          title: Text("anshad"),
          leading: Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),),
        ),
        ListTile(
          title: Text("anshad"),
          leading: Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),),
        )
      ],),
    ),
  );
  }


}