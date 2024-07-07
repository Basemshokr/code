// ignore_for_file: camel_case_types, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fruitful2/app_page.dart';
import 'package:fruitful2/help.dart';

import 'package:fruitful2/logo.dart';
import 'package:fruitful2/mode.dart';
import 'package:fruitful2/namt.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
            top: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const help();
                }));
              },
              child: Image.asset(
                "assets/images/frame-1.png",
                width: MediaQuery.of(context).size.width * 0.07,
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const app_page();
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
            child: Image.asset(
              "assets/images/الإعدادات.png",
              width: MediaQuery.of(context).size.width * 0.45,
              color: Colors.black,
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
                "assets/images/Group 52 (1).png",
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
                  return const modes();
                }));
              },
              child: Image.asset(
                "assets/images/Group 53.png",
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
                  return const help();
                }));
              },
              child: Image.asset(
                "assets/images/Group 54.png",
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
                  return SplashScreen();
                }));
              },
              child: Image.asset(
                "assets/images/Group 55.png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ))
      ],
    ));
  }
}
