// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitful2/english_ligth_mode/eng_help.dart';
import 'package:image_picker/image_picker.dart';

class eng_camera2 extends StatefulWidget {
  const eng_camera2({super.key});

  @override
  State<eng_camera2> createState() => _eng_camera2State();
}

class _eng_camera2State extends State<eng_camera2> {
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
                return const eng_help();
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
                  : const Text(
                      "Your image will appear here !",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF95BD92)),
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
                    const Text(
                      "Take a photo with camera",
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF95BD92)),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
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
                    const Text(
                      " upload a photo",
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF95BD92)),
                    )
                  ],
                ),
              ],
            ),
          ],
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
