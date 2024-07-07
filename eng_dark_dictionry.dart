import 'package:flutter/material.dart';
import 'package:fruitful2/dictionrycontent.dart';

import 'package:fruitful2/english_dark_mode/eng_dark_help.dart';

class eng_dark_dictionry extends StatefulWidget {
  const eng_dark_dictionry({super.key});

  @override
  State<eng_dark_dictionry> createState() => _eng_dark_dictionryState();
}

class _eng_dark_dictionryState extends State<eng_dark_dictionry> {
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
                  width: MediaQuery.of(context).size.width * 0.1,
                  color: Color(0xff87C488),
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
                    color: Color(0xff87C488),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    "assets/images/frame-2.png",
                    width: MediaQuery.of(context).size.width * 0.07,
                    color: Color(0xff87C488),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return plants();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1), color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Vegetables",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              "assets/images/Vegetable.png",
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return fruits();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1), color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Fruits",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Image.asset(
                              "assets/images/fruit.png",
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return flowers();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1), color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Flowers",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/images/flower.png",
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
