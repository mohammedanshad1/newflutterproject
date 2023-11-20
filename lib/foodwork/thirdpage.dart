import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: thirdpage(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_back_ios),
            title: Center(
                child: Text(
              "My Profile",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            trailing: Icon(Icons.drive_file_rename_outline),
          ),
          ListTile(
            title: Text(
              "Mohammed Anshad",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("anshad@gmail.com"),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          TabBar(tabs: [
            Tab(
              child: Text(
                "Account",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Payment Method",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Tab(
                child: Text(
              "History",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Text(
              "My Cards",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                      "assets/icons/atm-card-png-download-atm-card-png-images-transparent-gallery-advertisement-advertisement-2000.png"),
                  height: 290,
                  width: 290,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(250)),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Add new card",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svg/944e6a44-20d3-4533-8bb5-37417a8ede5b_pixelied-w.svg",
                  height: 50,
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Applepay",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 154),
                  child: Icon(Icons.radio_button_off,color: Colors.orange,),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/69f4221b-ab05-4dd7-b8d3-c222233d1a62_pixelied-st-bernard.svg",
                      height: 30,
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Mastercad",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 148),
                      child: Icon(Icons.radio_button_off,color: Colors.orange,),
                    )
                  ],
                ),
              )
            ],
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/40ad50a6-a04c-4cda-a200-d567ce1e6d92_pixelied-i-love-lucy.svg",
                      height: 30,
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Google pay",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 142),
                      child: Icon(Icons.radio_button_checked,color: Colors.orange,),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(height: 70,width: 70,
              child: Container(margin: EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                   ),
                    onPressed: (){}, child: Text("Buy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              ),
            ),
          )
        ],
      )),
    );
  }
}
