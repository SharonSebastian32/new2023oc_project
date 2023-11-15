import 'dart:io';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class xfilee extends StatefulWidget {
  const xfilee({super.key});

  @override
  State<xfilee> createState() => _xfileeState();
}

class _xfileeState extends State<xfilee> {
  File? myImage;

  chooseImage() async {
    var img = await ImagePicker().pickImage(source: ImageSource.gallery);
    myImage = File(img!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                children: [
                  InkWell(
                      onTap: () {
                        chooseImage();
                      },
                      child: myImage == null
                          ? CircleAvatar(
                              radius: 80,

                              backgroundColor: Colors.blue,
                              child: Icon(Icons.person),
                            )
                          : CircleAvatar(
                              radius: 160,
                              backgroundImage: FileImage(myImage!),
                            ))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellowAccent

        ,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
