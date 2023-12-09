import 'package:flutter/material.dart';

class userhome extends StatelessWidget {
  final data;
  const userhome({Key?key,required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];


    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Text(
        "Welcome EveryOne !!!!!",
        style: TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
