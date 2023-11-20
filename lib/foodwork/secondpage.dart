import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: secondpage(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class secondpage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
             color: Colors.white30,
            ),
            height: 400,
            width: 400,
          ),
          Positioned(
            child: Container(
              color: Colors.white,child: Row(children: [


                Padding(
                  padding: const EdgeInsets.only(bottom: 300,left: 30),
                  child: Text("AlFahm",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 170,bottom: 300),
                child: Text("9.80",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
         Container(child:

               Row(
                 children: [
                   Center(child: Padding(
                     padding: const EdgeInsets.only(bottom: 150),
                     child: Row(
                       children: [
                         Icon(Icons.star),
                       
                       ],
                     ),
                   )),

                 ],
               )

           ),
             

    ]),
            ),

            height: 450,
            width: 390,
            top: 400,
          ),
          Positioned(
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(500)),
                child: ListTile(
                  title: Center(child: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                  )),
                  leading: Text(
                    "-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("+",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            height: 50,
            width: 100,
            top: 370,
            left: 140,
          )
        ],
      ),
    );
  }
}
