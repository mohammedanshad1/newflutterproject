import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: List_builder(),
    ),
  ));
}

class List_builder extends StatelessWidget {
  var name = ["Akshay", "Ram", "Anu"];
  var phone = ["9633014998", "7665445342", "09874543432"];
  var Image = [
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
  ];
 var color=[100,200,300,400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List builder"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(color: Colors.red[index],
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Image[index]),

                ),

              ),
            );
          },
          itemCount: name.length),

    );
  }
}