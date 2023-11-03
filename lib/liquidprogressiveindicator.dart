import 'package:device_preview/device_preview.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:flutter/material.dart';

void main() => runApp(DevicePreview(builder: (BuildContext context)
=> MaterialApp(home: Example(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Progress Indicator Examples"),
      ),
      body: LiquidCircularProgressIndicator(
        value: 0.5,
        valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
        backgroundColor: Colors.white,
        borderColor: Colors.black54,
        borderWidth: 0.0,
        direction: Axis.vertical,
        center: Text("lOADING..."),

      ),


    );
  }
}