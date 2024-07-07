// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:fruitful2/arabic.dart';
import 'package:fruitful2/englishchoise.dart';

class ChoicePage extends StatefulWidget {
  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(
                "assets/images/Group 41.png",
                width: MediaQuery.of(context).size.width * 0.5,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return arabic();
                  }));
                },
                child: Container(
                  child: Image.asset(
                    "assets/images/Group 35.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return english();
                  }));
                },
                child: Container(
                  child: Image.asset(
                    "assets/images/Group 36.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/Vector.png",
                width: MediaQuery.of(context).size.width * 0.5,
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
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
