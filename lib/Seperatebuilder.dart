import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: List_seperate(),
    ),
  ));
}

class List_seperate extends StatelessWidget {
  var name = ["Akshay", "Ram", "Anu"];
  var phone = ["9633014998", "7665445342", "09874543432"];
  var clr = [
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png",
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png",
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List separate"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(clr[index]),
                ),

              ),
            );
          },



          separatorBuilder: (BuildContext context,int index){
        return Card(
          child: ListTile(
           title: Text("hi how are you"),
          ),
        );



          },

        itemCount: name.length,
          ),
    );
  }
}