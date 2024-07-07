// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:fruitful2/correctlogin.dart';
import 'package:fruitful2/returnpass.dart';
import 'package:fruitful2/signup.dart';

class unlogin extends StatefulWidget {
  const unlogin({super.key});

  @override
  State<unlogin> createState() => _unloginState();
}

class _unloginState extends State<unlogin> {
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
                "assets/images/ok (10).png",
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
              top: MediaQuery.of(context).size.height * 0.5,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Text(
                "كلمة المرور او الايميل خطأ ❌",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
              )),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
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
                  height: MediaQuery.of(context).size.height * 0.08,
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
                  child: Text(
                    "هل نسيت كلمة المرور ؟",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        color: Colors.black),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return const sign_up();
                    }));
                  },
                  child: Text(
                    "تسجيل حساب",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.07,
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
      return const correct_login();
    } else {
      return const unlogin();
    }
  }
}
