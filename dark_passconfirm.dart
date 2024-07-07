import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_correctpass.dart';
import 'package:fruitful2/darkmode/dark_login.dart';

class dark_passconfirm extends StatefulWidget {
  const dark_passconfirm({super.key});

  @override
  State<dark_passconfirm> createState() => _dark_passconfirmState();
}

class _dark_passconfirmState extends State<dark_passconfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF132312),
      body: SingleChildScrollView(
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
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  Image.asset(
                    "assets/images/Group 51.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.height * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 33, 113, 36)),
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
                              hintText: '  كلمة المرور الجديده   ',
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
                            width: 1, color: Color.fromARGB(255, 31, 106, 33)),
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
                              hintText: ' تأكيد كلمة المرور    ',
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
                        return dark_correctpass();
                      }));
                    },
                    child: Image.asset(
                      "assets/images/ok (2).png",
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext) {
                        return dark_login();
                      }));
                    },
                    child: Image.asset(
                      "assets/images/العودة لتسجيل الدخول.png",
                      width: MediaQuery.of(context).size.width * 0.6,
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