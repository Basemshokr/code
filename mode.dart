// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruitful2/app_page.dart';
import 'package:fruitful2/darkmode/dark_app_page.dart';

import 'package:fruitful2/help.dart';

class modes extends StatefulWidget {
  const modes({super.key});

  @override
  State<modes> createState() => _modesState();
}

class _modesState extends State<modes> {
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
                color: const Color.fromARGB(255, 255, 255, 255),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.45,
              child: Image.asset(
                "assets/images/frame-3.png",
                width: MediaQuery.of(context).size.width * 0.14,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.07,
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
              top: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.width * 0.07,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  "assets/images/frame-2.png",
                  width: MediaQuery.of(context).size.width * 0.07,
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Image.asset(
                "assets/images/غير الوضع اللوني الآن.png",
                width: MediaQuery.of(context).size.width * 0.7,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.15,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const app_page();
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
                    return const dark_app_page();
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
