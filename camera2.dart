// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:fruitful2/help.dart';

import 'package:image_picker/image_picker.dart';

class camera2 extends StatefulWidget {
  const camera2({super.key});

  @override
  State<camera2> createState() => _camera2State();
}

class _camera2State extends State<camera2> {
  File? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return const help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 9,
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          const Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
            ),
          ),
          const Spacer(
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
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                radius: MediaQuery.of(context).size.width * 0.4,
                child: _selectedimage != null
                    ? Image.file(_selectedimage!)
                    : Text(
                        "صورتك هتظهر هنا!",
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.lightGreen[600]),
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          _pickimagefromcamera();
                        },
                        child: Container(
                          child: Image.asset(
                            "assets/images/what-are-png-files-used-for-9.png",
                            width: MediaQuery.of(context).size.width * 0.2,
                            color: const Color(0xFF95BD92),
                          ),
                        ),
                      ),
                      Text(
                        "التقط صوره بالكاميرا",
                        style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen[600]),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          _pickimagefromgallary();
                        },
                        child: Container(
                          child: Image.asset(
                            "assets/images/photo-gallery-icon-png-33.png",
                            width: MediaQuery.of(context).size.width * 0.2,
                            color: const Color(0xFF95BD92),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "تحميل صوره",
                        style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen[600]),
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
