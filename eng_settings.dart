// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruitful2/english_ligth_mode/eng_app_page.dart';
import 'package:fruitful2/english_ligth_mode/eng_help.dart';
import 'package:fruitful2/english_ligth_mode/eng_modes.dart';
import 'package:fruitful2/english_ligth_mode/english_login.dart';

import 'package:fruitful2/namt.dart';

class eng_settings extends StatefulWidget {
  const eng_settings({super.key});

  @override
  State<eng_settings> createState() => _eng_settingsState();
}

class _eng_settingsState extends State<eng_settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/top vector.png",
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.45,
            child: Image.asset(
              "assets/images/frame-3.png",
              width: MediaQuery.of(context).size.width * 0.13,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const eng_help();
                }));
              },
              child: Image.asset(
                "assets/images/frame-1.png",
                width: MediaQuery.of(context).size.width * 0.07,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.03,
            right: MediaQuery.of(context).size.width * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const eng_app_page();
                }));
              },
              child: Image.asset(
                "assets/images/frame-2.png",
                width: MediaQuery.of(context).size.width * 0.07,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              "Settings",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: MediaQuery.of(context).size.width * 0.2,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const first();
                }));
              },
              child: Image.asset(
                "assets/images/Group 68 (1).png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: MediaQuery.of(context).size.width * 0.2,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const eng_modes();
                }));
              },
              child: Image.asset(
                "assets/images/Group 69.png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            left: MediaQuery.of(context).size.width * 0.2,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const eng_help();
                }));
              },
              child: Image.asset(
                "assets/images/Group 70.png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.65,
            left: MediaQuery.of(context).size.width * 0.2,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const eng_login();
                }));
              },
              child: Image.asset(
                "assets/images/Group 71.png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ))
      ],
    ));
  }
}
