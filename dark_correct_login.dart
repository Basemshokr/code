import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_loginslider.dart';

class dark_correct_login extends StatefulWidget {
  const dark_correct_login({super.key});

  @override
  State<dark_correct_login> createState() => _dark_correct_loginState();
}

class _dark_correct_loginState extends State<dark_correct_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF132213),
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
              "assets/images/ok (12).png",
              width: MediaQuery.of(context).size.width,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.31,
            child: Image.asset(
              "assets/images/Group 47 (1).png",
              width: MediaQuery.of(context).size.width * 0.35,
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.35,
          left: MediaQuery.of(context).size.width * 0.1,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                "assets/images/تم تسجيل حسابك بنجاح.png",
                width: MediaQuery.of(context).size.width * 0.7,
                color: Colors.white,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return dark_loginslider_1();
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
