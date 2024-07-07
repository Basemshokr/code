import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_loginslider.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_returnpass.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_signup.dart';

class eng_dark_correctlogin extends StatefulWidget {
  const eng_dark_correctlogin({super.key});

  @override
  State<eng_dark_correctlogin> createState() => _eng_dark_correctloginState();
}

class _eng_dark_correctloginState extends State<eng_dark_correctlogin> {
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
                color: Colors.white,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return eng_dark_slider1();
                  }));
                },
                child: Image.asset(
                  "assets/images/ok (14).png",
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

class eng_dark_unlogin extends StatefulWidget {
  const eng_dark_unlogin({super.key});

  @override
  State<eng_dark_unlogin> createState() => _eng_dark_unloginState();
}

class _eng_dark_unloginState extends State<eng_dark_unlogin> {
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
      backgroundColor: Color(0XFF132312),
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
              left: MediaQuery.of(context).size.width * 0.35,
              child: Image.asset(
                "assets/images/Group 47 (1).png",
                width: MediaQuery.of(context).size.width * 0.35,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(
                "assets/images/Group 62 (1).png",
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
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
                          width: 1, color: Color.fromARGB(255, 28, 95, 30)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
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
                  padding: const EdgeInsets.only(left: 25, right: 25),
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
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password ',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
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
                      return eng_dark_returnpass();
                    }));
                  },
                  child: Text(
                    "Did you forget your password ?",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_dark_signup();
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
      return eng_dark_correctlogin();
    } else {
      return eng_dark_unlogin();
    }
  }
}
