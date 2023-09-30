import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
    =>MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,home:separatebuilder()
    ),
  ));
}
class separatebuilder extends StatelessWidget{


  var name=["anshad","jubair","thaslim"];
  var phone=["9494","4994094","83939"];
  var image=["assets/icons/483251 (1).jpg",
      "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets/icons/Simpleicons-Team-Simple-Apple.512.png"];
  var color=[Colors.green,Colors.red,Colors.yellow];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("List separate"),),

      body: ListView.separated(itemBuilder: (context,index){


      return  Card(color: color[index],
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
          ),
        );
      },
      itemCount: name.length,
        separatorBuilder: (BuildContext context,int index){

        return
            ListTile(
              title: Text("unique ones"),
              subtitle: Text("hi"),
            );
        }),

      );



}


}

