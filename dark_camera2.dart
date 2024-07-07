import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class dark_camera2 extends StatefulWidget {
  const dark_camera2({super.key});

  @override
  State<dark_camera2> createState() => _dark_camera2State();
}

class _dark_camera2State extends State<dark_camera2> {
  File? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
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
                      "صورتك هتظهر هنا!",
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
                      "التقط صوره بالكاميرا",
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
                      "تحميل صوره",
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
