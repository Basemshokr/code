import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_arabic.dart';
import 'package:fruitful2/darkmode/dark_english.dart';

class dark_choicepage extends StatefulWidget {
  const dark_choicepage({super.key});

  @override
  State<dark_choicepage> createState() => _dark_choicepageState();
}

class _dark_choicepageState extends State<dark_choicepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF95BD92),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: 30,
                  left: 130,
                  child: Image.asset(
                    "assets/images/Group 41.png",
                    width: 200,
                  )),
              Positioned(
                  top: 200,
                  left: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return dark_arabic();
                      }));
                    },
                    child: Container(
                      child: Image.asset(
                        "assets/images/Group 56 (1).png",
                        width: 350,
                      ),
                    ),
                  )),
              Positioned(
                  top: 330,
                  left: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return dark_english();
                      }));
                    },
                    child: Container(
                      child: Image.asset(
                        "assets/images/Group 57 (1).png",
                        width: 350,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/Vector.png",
                    width: 215,
                  )),
              Positioned(
                  bottom: 40,
                  left: 40,
                  child: Container(
                    child: Image.asset(
                      "assets/images/ok.png",
                      width: 350,
                    ),
                  ))
            ],
          ),
        ));
  }
}
