// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:fruitful2/dictionrycontent.dart';
import 'package:fruitful2/help.dart';

class dictionry extends StatefulWidget {
  const dictionry({super.key});

  @override
  State<dictionry> createState() => _dictionryState();
}

class _dictionryState extends State<dictionry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                  width: MediaQuery.of(context).size.width * 0.1,
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
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    "assets/images/frame-2.png",
                    width: MediaQuery.of(context).size.width * 0.07,
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
                          return const plants();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(1, 1), color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/Vegetable.png",
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "الخضراوات",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return const fruits();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(1, 1), color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/fruit.png",
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "الفواكه",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return const flowers();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(1, 1), color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/flower.png",
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "الزهور",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 5,
                            )
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
