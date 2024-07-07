// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:fruitful2/login.dart';
import 'package:fruitful2/passreturncont.dart';

class returnpass extends StatefulWidget {
  const returnpass({super.key});

  @override
  State<returnpass> createState() => _returnpassState();
}

class _returnpassState extends State<returnpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/ok (6).png",
                  width: MediaQuery.of(context).size.width,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.23,
                child: Image.asset(
                  "assets/images/ok (7).png",
                  width: MediaQuery.of(context).size.width,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                left: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset(
                  "assets/images/Group 47 (1).png",
                  width: MediaQuery.of(context).size.width * 0.35,
                )),
            Positioned(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  Image.asset(
                    "assets/images/Group 48.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 28, 95, 30)),
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'الايميل / رقم الهاتف ',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
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
                        return const message();
                      }));
                    },
                    child: Image.asset(
                      "assets/images/ok (2).png",
                      width: MediaQuery.of(context).size.width * 0.85,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return const login();
                      }));
                    },
                    child: Image.asset(
                      "assets/images/العودة لتسجيل الدخول.png",
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
