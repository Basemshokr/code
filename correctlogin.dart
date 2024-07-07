// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:fruitful2/loginslider.dart';

class correct_login extends StatefulWidget {
  const correct_login({super.key});

  @override
  State<correct_login> createState() => _correct_loginState();
}

class _correct_loginState extends State<correct_login> {
  @override
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
            top: MediaQuery.of(context).size.height * 0.25,
            child: Image.asset(
              "assets/images/ok (7).png",
              width: MediaQuery.of(context).size.width,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              "assets/images/Group 47 (1).png",
              width: MediaQuery.of(context).size.width * 0.4,
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.35,
          left: MediaQuery.of(context).size.width * 0.1,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Image.asset(
                "assets/images/تم تسجيل حسابك بنجاح.png",
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return OnboardingScreen();
                  }));
                },
                child: Image.asset(
                  "assets/images/ok (2).png",
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
