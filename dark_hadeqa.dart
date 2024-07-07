import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_help.dart';
import 'package:image_picker/image_picker.dart';

class dark_hadeqa extends StatefulWidget {
  const dark_hadeqa({super.key});

  @override
  State<dark_hadeqa> createState() => _dark_hadeqaState();
}

class _dark_hadeqaState extends State<dark_hadeqa> {
  File? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132213),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return dark_help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
              color: Color(0xff95BD92),
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
              color: Color(0xff95BD92),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
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
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "assets/images/Group 24.png",
                  width: MediaQuery.of(context).size.width * 0.65,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              radius: MediaQuery.of(context).size.width * 0.5,
              child: _selectedimage != null
                  ? Image.file(_selectedimage!)
                  : Text(
                      "!صورتك هتظهر هنا",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 85, 153, 93)),
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/Frame 2.png",
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            SizedBox(
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
