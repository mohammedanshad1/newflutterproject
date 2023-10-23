import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
 => MaterialApp(home: sliversnew(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false)));

}
class sliversnew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   body:
     Stack(

       children: [
                Container(
                  color: Colors.green[100],height:double.infinity,width: double.infinity,
                  child: AppBar(backgroundColor: Colors.green[200],
                    title: Center(child: Text("Check out My profile",style: TextStyle(color: Colors.black),),),
                  ),

                ),
         Positioned(
          child: Container(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ListTile(title: Text("    Moahammed Anshad",style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                leading: Text("Full Name:",style: TextStyle(color: Colors.black87,fontSize: 15),),),
              ),Divider(color: Colors.black87,),
              ListTile(
                leading: Text("Fathers Name:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text(" Abdurahiman",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,),
              ListTile(
                leading: Text("Mothers  Name:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("  Sameera",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,),
              ListTile(
                leading: Text("  Address:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("    Kunnummal house,",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),Divider(color: Colors.black87,),

              ListTile(
                leading: Text("Qualification:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("BCA",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,),
              ListTile(
                leading: Text("Contact No:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("9744043830",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,),
              ListTile(
                leading: Text("  Place:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("    Thiruvegappura",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,),

              ListTile(
                leading: Text("District:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("Palakkad",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,),
              ListTile(
                leading: Text("Hobbies:",style: TextStyle(color: Colors.black87,fontSize: 15),),
                title: Text("Playing,Musics",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),Divider(color: Colors.black87,)
            ],
          ),
             color: Colors.white,height: 600,width: 600,
           ),top: 300,
         ),

         Positioned(
           child: Container(child: Image(image: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),fit: BoxFit.fill,),
             color: Colors.green,height: 150,width: 150,
           ),top: 220,left: 120,
         ),

       ],


     ),
   );
     

  }


}