import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_app_page.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_help.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_language.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_login.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_modes.dart';

class eng_dark_settings extends StatefulWidget {
  const eng_dark_settings({super.key});

  @override
  State<eng_dark_settings> createState() => _eng_dark_settingsState();
}

class _eng_dark_settingsState extends State<eng_dark_settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF132213),
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
                  width: MediaQuery.of(context).size.width * 0.13,
                  color: Color(0XFF95BD92),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.05,
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
                    color: Color(0XFF95BD92),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_dark_app_page();
                    }));
                  },
                  child: Image.asset(
                    "assets/images/frame-2.png",
                    width: MediaQuery.of(context).size.width * 0.07,
                    color: Color(0XFF95BD92),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
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
                      return eng_dark_first();
                    }));
                  },
                  child: Image.asset(
                    "assets/images/Group 68.png",
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
                      return eng_dark_modes();
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
                      return eng_dark_help();
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
                      return eng_dark_login();
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
