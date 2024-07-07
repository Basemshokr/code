// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class camera extends StatefulWidget {
  const camera({super.key});

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  File? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: MediaQuery.of(context).size.width * 0.4,
              child: _selectedimage != null
                  ? Image.file(_selectedimage!)
                  : const Text(
                      "!صورتك هتظهر هنا",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 85, 153, 93)),
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
                          color: const Color(0xFF95BD92),
                        ),
                      ),
                    ),
                    const Text(
                      "التقط صورة بالكاميرا",
                      style: TextStyle(
                          fontSize: 15,
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
                          color: const Color(0xFF95BD92),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "تحميل صورة",
                      style: TextStyle(
                          fontSize: 15,
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
