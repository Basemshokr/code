import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitful2/help.dart';
import 'package:image_picker/image_picker.dart';

class eng_kosa_dis extends StatefulWidget {
  const eng_kosa_dis({super.key});

  @override
  State<eng_kosa_dis> createState() => _eng_kosa_disState();
}

class _eng_kosa_disState extends State<eng_kosa_dis> {
  File? _selectedimage;
  Color _textColor = Colors.black;

  void _changeTextColor() {
    setState(() {
      _textColor = _textColor == Colors.black ? Colors.blue : Colors.black;
    });
  }

  void _handleTap() {
    _changeTextColor();
    _pickimagefromcamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
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
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: MediaQuery.of(context).size.width * 0.4,
              child: _selectedimage != null
                  ? Image.file(_selectedimage!)
                  : const Text(
                      "Your image will appear here ",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 85, 153, 93)),
                    ),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
                onTap: () {
                  _handleTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Tap here to discover Zucchini    ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                ))
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

class eng_felfel_dis extends StatefulWidget {
  const eng_felfel_dis({super.key});

  @override
  State<eng_felfel_dis> createState() => _eng_felfel_disState();
}

class _eng_felfel_disState extends State<eng_felfel_dis> {
  File? _selectedimage;
  Color _textColor = Colors.black;

  void _changeTextColor() {
    setState(() {
      _textColor = _textColor == Colors.black ? Colors.blue : Colors.black;
    });
  }

  void _handleTap() {
    _changeTextColor();
    _pickimagefromcamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
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
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: MediaQuery.of(context).size.width * 0.4,
              child: _selectedimage != null
                  ? Image.file(_selectedimage!)
                  : const Text(
                      "Your image will appear here ",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 85, 153, 93)),
                    ),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
                onTap: () {
                  _handleTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Tap here to discover papper    ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                ))
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

class eng_kear_dis extends StatefulWidget {
  const eng_kear_dis({super.key});

  @override
  State<eng_kear_dis> createState() => _eng_kear_disState();
}

class _eng_kear_disState extends State<eng_kear_dis> {
  File? _selectedimage;
  Color _textColor = Colors.black;

  void _changeTextColor() {
    setState(() {
      _textColor = _textColor == Colors.black ? Colors.blue : Colors.black;
    });
  }

  void _handleTap() {
    _changeTextColor();
    _pickimagefromcamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
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
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: MediaQuery.of(context).size.width * 0.4,
              child: _selectedimage != null
                  ? Image.file(_selectedimage!)
                  : const Text(
                      "Your image will appear here ",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 85, 153, 93)),
                    ),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
                onTap: () {
                  _handleTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Tap here to discover Cucumber    ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                ))
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
