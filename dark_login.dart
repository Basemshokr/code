import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_correct_login.dart';
import 'package:fruitful2/darkmode/dark_returnpass.dart';
import 'package:fruitful2/darkmode/dark_sign_up.dart';
import 'package:fruitful2/darkmode/dark_unlogin.dart';

class dark_login extends StatefulWidget {
  const dark_login({super.key});

  @override
  State<dark_login> createState() => _dark_loginState();
}

class _dark_loginState extends State<dark_login> {
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
      backgroundColor: Color(0xFF132312),
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
                "assets/images/ok (12).png",
                width: MediaQuery.of(context).size.width,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Image.asset(
                "assets/images/Group 62.png",
                width: MediaQuery.of(context).size.width * 0.9,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(
                "assets/images/Group 47 (1).png",
                width: MediaQuery.of(context).size.width * 0.4,
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
                          width: 1, color: Color.fromARGB(255, 33, 110, 35)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            hintText: 'الايميل',
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
                          width: 1, color: Color.fromARGB(255, 33, 110, 35)),
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
                            hintText: 'كلمة المرور',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
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
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return dark_returnpass();
                    }));
                  },
                  child: Text(
                    "هل نسيت كلمة المرور ؟",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return dark_sign_up();
                    }));
                  },
                  child: Text(
                    "تسجيل حساب",
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
      return dark_correct_login();
    } else {
      return dark_unlogin();
    }
  }
}
