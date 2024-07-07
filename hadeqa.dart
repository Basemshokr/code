// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitful2/help.dart';
import 'package:image_picker/image_picker.dart';

class hadeqa extends StatefulWidget {
  const hadeqa({super.key});

  @override
  State<hadeqa> createState() => _hadeqaState();
}

class _hadeqaState extends State<hadeqa> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 35,
                ),
                GestureDetector(
                  onTap: () {
                    _pickimagefromcamera();
                  },
                  child: Image.asset(
                    "assets/images/Group 25.png",
                    width: MediaQuery.of(context).size.width * 0.16,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "assets/images/Group 24.png",
                  width: MediaQuery.of(context).size.width * 0.65,
                )
              ],
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: MediaQuery.of(context).size.width * 0.5,
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
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/Frame 2.png",
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/farm.png",
              width: MediaQuery.of(context).size.width * 0.9,
            )
          ],
        ),
      ),
    );
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
