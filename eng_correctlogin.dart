// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruitful2/english_ligth_mode/eng_loginslider.dart';

class eng_correctlogin extends StatefulWidget {
  const eng_correctlogin({super.key});

  @override
  State<eng_correctlogin> createState() => _eng_correctloginState();
}

class _eng_correctloginState extends State<eng_correctlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
            left: MediaQuery.of(context).size.width * 0.35,
            child: Image.asset(
              "assets/images/Group 47 (1).png",
              width: MediaQuery.of(context).size.width * 0.35,
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          left: MediaQuery.of(context).size.width * 0.1,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset(
                "assets/images/Your account has been registered Successfully.png",
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return eng_slider1();
                  }));
                },
                child: Image.asset(
                  "assets/images/ok (15).png",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
