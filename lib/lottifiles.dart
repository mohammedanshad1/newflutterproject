import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: lottie(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));

}
class lottie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [

        Lottie.asset("assets/animations/animation_lnsgwga9.json"),
        Lottie.network("https://lottie.host/5e52b31d-33a3-492d-810b-159eaf9ffeb4/A3ZJ1nzIll.json"),
        Lottie.network("https://lottie.host/2c21d41e-150f-44da-aa43-6a6e557e3790/SrlgG4JRCV.json")
      ],),
    );
  }


}