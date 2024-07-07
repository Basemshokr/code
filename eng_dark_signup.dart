import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_correctlogin.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_login.dart';

class eng_dark_signup extends StatefulWidget {
  const eng_dark_signup({super.key});

  @override
  State<eng_dark_signup> createState() => _eng_dark_signupState();
}

class _eng_dark_signupState extends State<eng_dark_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF132213),
        body: SingleChildScrollView(
          child: Stack(children: [
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
                child: Image.asset(
                  "assets/images/Group 66.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.white,
                )),
            Positioned(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email ',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone number  ',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password  ',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: ' confirm password  ',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_correctlogin();
                      }));
                    },
                    child: Image.asset(
                      "assets/images/ok (15).png",
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return eng_dark_login();
                      }));
                    },
                    child: Text(
                      "Back to sign in ? ",
                      style: TextStyle(fontSize: 25, color: Color(0XFF006402)),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
