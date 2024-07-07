import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_app_page.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_help.dart';
import 'package:image_picker/image_picker.dart';

class eng_dark_camera extends StatefulWidget {
  const eng_dark_camera({super.key});

  @override
  State<eng_dark_camera> createState() => _eng_dark_cameraState();
}

class _eng_dark_cameraState extends State<eng_dark_camera> {
  File? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return eng_dark_help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
              color: Color(0XFF95BD92),
            ),
          ),
          Spacer(
            flex: 11,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage(
              "assets/images/frame-3.png",
            ),
          ),
          Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return eng_dark_app_page();
              }));
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
              color: Color(0XFF95BD92),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundColor: const Color(0XFF132213),
                radius: MediaQuery.of(context).size.width * 0.4,
                child: _selectedimage != null
                    ? Image.file(_selectedimage!)
                    : Text(
                        "your image will appear here !",
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      GestureDetector(
                        onTap: () {
                          _pickimagefromcamera();
                        },
                        child: Container(
                          child: Image.asset(
                            "assets/images/what-are-png-files-used-for-9.png",
                            width: MediaQuery.of(context).size.width * 0.2,
                            color: Color(0XFF95BD92),
                          ),
                        ),
                      ),
                      Text(
                        " Take a photo with camera",
                        style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF95BD92)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      GestureDetector(
                        onTap: () {
                          _pickimagefromgallary();
                        },
                        child: Container(
                          child: Image.asset(
                            "assets/images/photo-gallery-icon-png-33.png",
                            width: MediaQuery.of(context).size.width * 0.2,
                            color: Color(0XFF95BD92),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " Upload photo ",
                        style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF95BD92)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _pickimagefromgallary() async {
    final returnimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnimage == null) return;
    setState(() {
      _selectedimage = File(returnimage!.path);
    });
  }

  Future _pickimagefromcamera() async {
    final returnimage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnimage == null) return;
    setState(() {
      _selectedimage = File(returnimage!.path);
    });
  }
}
