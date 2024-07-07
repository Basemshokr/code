// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_app_page.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_app_page.dart';

class eng_dark_first extends StatefulWidget {
  const eng_dark_first({super.key});

  @override
  State<eng_dark_first> createState() => _eng_dark_firstState();
}

class _eng_dark_firstState extends State<eng_dark_first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff95BD92),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.25,
                  child: Image.asset(
                    "assets/images/Group 57.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Color(0xff006402),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_second();
                      }));
                    },
                    child: Container(
                      child: Image.asset("assets/images/Group 56 (1).png",
                          width: MediaQuery.of(context).size.width * 0.8),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_third();
                      }));
                    },
                    child: Container(
                      child: Image.asset("assets/images/Group 57 (1).png",
                          width: MediaQuery.of(context).size.width * 0.8),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset("assets/images/Vector.png",
                      width: MediaQuery.of(context).size.width * 0.5)),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.07,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: Container(
                    child: Image.asset(
                      "assets/images/ok.png",
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ))
            ],
          ),
        ));
  }
}

class eng_dark_second extends StatefulWidget {
  const eng_dark_second({super.key});

  @override
  State<eng_dark_second> createState() => _eng_dark_secondState();
}

class _eng_dark_secondState extends State<eng_dark_second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff95BD92),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.25,
                  child: Image.asset(
                    "assets/images/Group 57.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Color(0xff006402),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: Container(
                    child: Image.asset("assets/images/Group 55 (2).png",
                        width: MediaQuery.of(context).size.width * 0.8),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_third();
                      }));
                    },
                    child: Container(
                      child: Image.asset("assets/images/Group 57 (1).png",
                          width: MediaQuery.of(context).size.width * 0.8),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset("assets/images/Vector.png",
                      width: MediaQuery.of(context).size.width * 0.5)),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.07,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return dark_app_page();
                      }));
                    },
                    child: Container(
                      child: Image.asset(
                        "assets/images/ok.png",
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}

class eng_dark_third extends StatefulWidget {
  const eng_dark_third({super.key});

  @override
  State<eng_dark_third> createState() => _eng_dark_thirdState();
}

class _eng_dark_thirdState extends State<eng_dark_third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff95BD92),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.25,
                  child: Image.asset(
                    "assets/images/Group 57.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Color(0xff006402),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_second();
                      }));
                    },
                    child: Container(
                      child: Image.asset("assets/images/Group 56 (1).png",
                          width: MediaQuery.of(context).size.width * 0.8),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: Container(
                    child: Image.asset("assets/images/Group 61 (1).png",
                        width: MediaQuery.of(context).size.width * 0.8),
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset("assets/images/Vector.png",
                      width: MediaQuery.of(context).size.width * 0.5)),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.07,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_app_page();
                      }));
                    },
                    child: Container(
                      child: Image.asset(
                        "assets/images/ok.png",
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
