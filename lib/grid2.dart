import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(home: Grid1(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,

    ),
  ));
}
class Grid1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> GridState();


}
class GridState extends State<Grid1>{
var clr=[Colors.red,Colors.blue,Colors.yellow,Colors.green,Colors.lightBlueAccent,Colors.orangeAccent];
/*var img=["assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
];*/
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("GridView"),),

       body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20
       ,mainAxisSpacing: 20),
           childrenDelegate: SliverChildBuilderDelegate((context,index) {
return
            Card(color: clr[index],
                child: Image(image: AssetImage("assets/icons/483251 (1).jpg"),height: 70,width: 50,),);


           },childCount: clr.length)
    )
    );
  }
}
