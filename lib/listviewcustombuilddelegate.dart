import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,home: Listviewcustom(),
    ),
  ));
}
class Listviewcustom extends StatelessWidget{

  var name=["Akshay", "Ram", "Anu"];
  var phone = ["9633014998", "7665445342", "09874543432"];
  var image = [
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png",
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png",
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png"
  ];
  var color=[Colors.yellow,Colors.red,Colors.green];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("List view Custom"),),
      body: ListView.custom(
          scrollDirection: Axis.vertical,shrinkWrap: true,

          childrenDelegate: SliverChildBuilderDelegate((context,index){
           return Card(color: color[index],
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                leading: Image(image: AssetImage(image[index]),),
              ),
            );
          },
childCount: name.length
          ),
      ),
    );
  }


}