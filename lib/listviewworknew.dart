import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  =>MaterialApp(home:listviewworknew(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class listviewworknew extends StatefulWidget{
  @override
  State<listviewworknew> createState() => _listviewworknewState();
}

class _listviewworknewState extends State<listviewworknew> {


  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(title: Text("listview & singleChildScrollView"),),


     body: ListView(children: [Divider(color: Colors.white,),
       SizedBox(width: 200,height: 150,
         child:
         Container(margin:const EdgeInsets.all(8.0),
             decoration: BoxDecoration(borderRadius:
             BorderRadius.circular(15),color: Colors.grey),
           child: ListTile(title: Text("flutter easy learning tutorial#31"),
           subtitle: Text("instructor:Musthafa Tahir"),
           trailing: Icon(Icons.arrow_forward_ios_rounded,size: 30,),
           leading: SvgPicture.asset("assets/svg/a97af872-d871-4e08-83b6-d5c5047dacd7_pixelied-f-bomb-mom-sunflower.svg"
               ,height: 20,width: 20,),),

           ),

         

       ),


       SizedBox(width: 200,height: 150,
         child: Container(margin: const EdgeInsets.all(8.0),
           decoration: BoxDecoration(borderRadius:
           BorderRadius.circular(15),color: Colors.grey),
           child: ListTile(title: Text("flutter easy learning tutorial#31"),
             subtitle: Text("instructor:Musthafa Tahir"),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 30,),
             leading: SvgPicture.asset("assets/svg/a97af872-d871-4e08-83b6-d5c5047dacd7_pixelied-f-bomb-mom-sunflower.svg"
               ,height: 20,width: 20),
         ),
       ),
       ),

       SizedBox(width: 200,height: 150,
         child: Container(margin: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
           child: ListTile(title: Text("flutter easy learning tutorial#31"),
             subtitle: Text("instructor:Musthafa Tahir"),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 30,
             ), leading: SvgPicture.asset("assets/svg/a97af872-d871-4e08-83b6-d5c5047dacd7_pixelied-f-bomb-mom-sunflower.svg"
               ,height: 20,width: 20,),
         ),
       ),
       ),


       SizedBox(width: 200,height: 150,
         child: Container(margin: const EdgeInsets.all(8.0),
           decoration: BoxDecoration(borderRadius:
           BorderRadius.circular(15),color: Colors.grey),
           child: ListTile(title: Text("flutter easy learning tutorial#31"),
             subtitle: Text("instructor:Musthafa Tahir"),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 30,),
             leading: SvgPicture.asset("assets/svg/a97af872-d871-4e08-83b6-d5c5047dacd7_pixelied-f-bomb-mom-sunflower.svg"
               ,height: 20,width: 20,),)
         ),
       ),



       SizedBox(width: 200,height: 150,
         child: Container(margin: const EdgeInsets.all(8.0),
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),color: Colors.grey),
           child: ListTile(title: Text("flutter easy learning tutorial#31"),
             subtitle: Text("instructor:Musthafa Tahir"),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 30,),
             leading: SvgPicture.asset("assets/svg/a97af872-d871-4e08-83b6-d5c5047dacd7_pixelied-f-bomb-mom-sunflower.svg"
               ,height: 20,width: 20,)),
         ),
       )
     ],),
   );
  }
}