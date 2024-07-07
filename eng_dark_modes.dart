// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_app_page.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_help.dart';
import 'package:fruitful2/english_ligth_mode/eng_app_page.dart';

class eng_dark_modes extends StatefulWidget {
  const eng_dark_modes({super.key});

  @override
  State<eng_dark_modes> createState() => _eng_dark_modesState();
}

class _eng_dark_modesState extends State<eng_dark_modes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132213),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/top vector (1).png",
                width: MediaQuery.of(context).size.width,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.45,
              child: Image.asset(
                "assets/images/frame-3.png",
                width: MediaQuery.of(context).size.width * 0.14,
                color: Color(0xff95BD92),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.07,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return eng_dark_help();
                  }));
                },
                child: Image.asset(
                  "assets/images/frame-1.png",
                  width: MediaQuery.of(context).size.width * 0.07,
                  color: Color(0xff95BD92),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.width * 0.07,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  "assets/images/frame-2.png",
                  width: MediaQuery.of(context).size.width * 0.07,
                  color: Color(0xff95BD92),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Image.asset(
                "assets/images/Change the color mode.png",
                width: MediaQuery.of(context).size.width * 0.7,
                color: Colors.white,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.15,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return eng_app_page();
                  }));
                },
                child: Image.asset(
                  "assets/images/Group 56.png",
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: MediaQuery.of(context).size.width * 0.15,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return eng_dark_app_page();
                  }));
                },
                child: Image.asset(
                  "assets/images/dark.png",
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ))
        ],
      ),
    );
  }
}
