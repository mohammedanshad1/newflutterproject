import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: datatables1(),
  ));
}

class datatables1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: DataTable(columns: [
        DataColumn(label: Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        DataColumn(label: Text("Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        DataColumn(label: Text("Place",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        DataColumn(label: Text("Contact No",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
      ], rows: [
        DataRow(cells: [
          DataCell(Text("Anshad")),
          DataCell(Text("Kunnummal")),
          DataCell(Text("Thiruvegappura")),
          DataCell(Text("974086666")),

        ]),

    DataRow(cells: [
    DataCell(Text("Anshad")),
    DataCell(Text("Kunnummal")),
    DataCell(Text("Thiruvegappura")),
    DataCell(Text("974086666")),

    ],),
    DataRow(cells: [
    DataCell(Text("Anshad")),
    DataCell(Text("Kunnummal")),
    DataCell(Text("Thiruvegappura")),
    DataCell(Text("974086666")),


    ]),
    DataRow(cells: [
    DataCell(Text("Anshad")),
    DataCell(Text("Kunnummal")),
    DataCell(Text("Thiruvegappura")),
    DataCell(Text("974086666")),

    ]
      ),
        DataRow(cells: [
          DataCell(Text("Anshad")),
          DataCell(Text("Kunnummal")),
          DataCell(Text("Thiruvegappura")),
          DataCell(Text("974086666")),

        ]
        ),
        DataRow(cells: [
          DataCell(Text("Anshad")),
          DataCell(Text("Kunnummal")),
          DataCell(Text("Thiruvegappura")),
          DataCell(Text("974086666")),

        ]
        ),
      ]) ));
  }
}
