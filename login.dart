// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:fruitful2/correctlogin.dart';
import 'package:fruitful2/misslogin.dart';
import 'package:fruitful2/returnpass.dart';
import 'package:fruitful2/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
      backgroundColor: const Color.fromARGB(255, 253, 255, 253),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
              left: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(
                "assets/images/Group 47 (1).png",
                width: MediaQuery.of(context).size.width * 0.4,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(
                "assets/images/Group 52 (3).png",
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
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _emailcontroller,
                        decoration: const InputDecoration(
                            hintText: 'الايميل',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordcontroller,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'كلمة المرور',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
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
                      "assets/images/ok (1).png",
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return const returnpass();
                    }));
                  },
                  child: const Text(
                    "هل نسيت كلمة المرور ؟",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return const sign_up();
                    }));
                  },
                  child: const Text(
                    "تسجيل حساب",
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 66, 157, 69)),
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
      return const correct_login();
    } else {
      return const unlogin();
    }
  }
}
