import 'package:flutter/material.dart';
import 'package:fruitful2/app_page.dart';
import 'package:fruitful2/darkmode/dark_app_page.dart';
import 'package:fruitful2/darkmode/dark_help.dart';

class dark_modes extends StatefulWidget {
  const dark_modes({super.key});

  @override
  State<dark_modes> createState() => _dark_modesState();
}

class _dark_modesState extends State<dark_modes> {
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
                    return dark_help();
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
                "assets/images/غير الوضع اللوني الآن.png",
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
                    return app_page();
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
                    return dark_app_page();
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
