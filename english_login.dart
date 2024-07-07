// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruitful2/english_ligth_mode/eng_correctlogin.dart';
import 'package:fruitful2/english_ligth_mode/eng_sign_up.dart';
import 'package:fruitful2/english_ligth_mode/english_passreturn.dart';

class eng_login extends StatefulWidget {
  const eng_login({super.key});

  @override
  State<eng_login> createState() => _eng_loginState();
}

class _eng_loginState extends State<eng_login> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 255, 253),
      body: SingleChildScrollView(
        child: Stack(children: [
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
              left: MediaQuery.of(context).size.width * 0.35,
              child: Image.asset(
                "assets/images/Group 47 (1).png",
                width: MediaQuery.of(context).size.width * 0.4,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(
                "assets/images/Group 62 (1).png",
                width: MediaQuery.of(context).size.width * 0.8,
              )),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 28, 95, 30)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password ',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.09,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return signin();
                    }));
                  },
                  child: Container(
                    child: Image.asset(
                      "assets/images/ok (13).png",
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_returnpass();
                    }));
                  },
                  child: Text(
                    "Did you forget your password ?",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: Colors.black),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_sign_up();
                    }));
                  },
                  child: Text(
                    "Sign up ",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: const Color.fromARGB(255, 66, 157, 69)),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  signin() {
    if (_emailcontroller.text.trim() == "basem" &&
        _passwordcontroller.text.trim() == "123") {
      return eng_correctlogin();
    } else {
      return eng_unlogin();
    }
  }
}

class eng_unlogin extends StatefulWidget {
  const eng_unlogin({super.key});

  @override
  State<eng_unlogin> createState() => _eng_unloginState();
}

class _eng_unloginState extends State<eng_unlogin> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 255, 253),
      body: SingleChildScrollView(
        child: Stack(children: [
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
              left: MediaQuery.of(context).size.width * 0.35,
              child: Image.asset(
                "assets/images/Group 47 (1).png",
                width: 150,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(
                "assets/images/Group 62 (1).png",
                width: MediaQuery.of(context).size.width * 0.8,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Text(
                "Email or password is wrong ❌",
                style: TextStyle(color: Colors.red, fontSize: 25),
              )),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 28, 95, 30)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password ',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.09,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return signin();
                    }));
                  },
                  child: Container(
                    child: Image.asset(
                      "assets/images/ok (13).png",
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_returnpass();
                    }));
                  },
                  child: Text(
                    "Did you forget your password ?",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: Colors.black),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_sign_up();
                    }));
                  },
                  child: Text(
                    "Sign up ",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: const Color.fromARGB(255, 66, 157, 69)),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  signin() {
    if (_emailcontroller.text.trim() == "basem" &&
        _passwordcontroller.text.trim() == "123") {
      return eng_correctlogin();
    } else {
      return eng_unlogin();
    }
  }
}
