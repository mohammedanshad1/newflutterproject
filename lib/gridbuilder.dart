/*import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(home: Grid(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}

class Grid extends StatelessWidget {
  var icon=[Icons.home,
  Icons.email,
  Icons.alarm,
  Icons.wallet_giftcard,
  Icons.backup,
  Icons.book];

  var name=["Home",
  "Email",
  "Alarm",
  "Wallet",
  "Backup",
  "Book"];

  var color=[Colors.yellow,Colors.grey,Colors.orangeAccent,Colors.red,Colors.blueGrey,Colors.green];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Grid View"),),

    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5
    ), itemBuilder: (context,index){
      return
      Card(color: color[index],


          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(icon[index],size: 30,),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(name[index],style: TextStyle(fontSize: 20,color: Colors.black),),
              ),






            ],

          ));


    },
      itemCount: name.length,


    )

  );




  }


}
*/


