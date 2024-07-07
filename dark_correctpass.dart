import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_login.dart';

class dark_correctpass extends StatefulWidget {
  const dark_correctpass({super.key});

  @override
  State<dark_correctpass> createState() => _dark_correctpassState();
}

class _dark_correctpassState extends State<dark_correctpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF132213),
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
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Image.asset(
                    "assets/images/تم استرجاع كلمة المرور بنجاح.png",
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
                        return dark_login();
                      }));
                    },
                    child: SizedBox(
                      width: 470,
                      height: 50,
                      child: Image.asset(
                        "assets/images/ok (2).png",
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
