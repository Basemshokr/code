// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:fruitful2/app_page.dart';
import 'package:fruitful2/english_ligth_mode/eng_app_page.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.25,
              child: Image.asset("assets/images/Group 57.png",
                  width: MediaQuery.of(context).size.width * 0.5)),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const second();
                  }));
                },
                child: Container(
                  child: Image.asset("assets/images/Group 35.png",
                      width: MediaQuery.of(context).size.width * 0.8),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const third();
                  }));
                },
                child: Container(
                  child: Image.asset("assets/images/Group 36.png",
                      width: MediaQuery.of(context).size.width * 0.8),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Image.asset("assets/images/Vector.png",
                  width: MediaQuery.of(context).size.width * 0.5)),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Container(
                child: Image.asset("assets/images/ok.png",
                    width: MediaQuery.of(context).size.width * 0.8),
              ))
        ],
      ),
    ));
  }
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.25,
              child: Image.asset("assets/images/Group 57.png",
                  width: MediaQuery.of(context).size.width * 0.5)),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Container(
                child: Image.asset("assets/images/Group 37.png",
                    width: MediaQuery.of(context).size.width * 0.8),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const third();
                  }));
                },
                child: Container(
                  child: Image.asset("assets/images/Group 36.png",
                      width: MediaQuery.of(context).size.width * 0.8),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Image.asset("assets/images/Vector.png",
                  width: MediaQuery.of(context).size.width * 0.5)),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const app_page();
                  }));
                },
                child: Container(
                  child: Image.asset("assets/images/ok.png",
                      width: MediaQuery.of(context).size.width * 0.8),
                ),
              ))
        ],
      ),
    ));
  }
}

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: 30,
              left: 130,
              child: Image.asset(
                "assets/images/Group 57.png",
                width: 200,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const second();
                  }));
                },
                child: Container(
                  child: Image.asset(
                    "assets/images/Group 35.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                child: Container(
                  child: Image.asset("assets/images/Group 39.png",
                      width: MediaQuery.of(context).size.width * 0.8),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Image.asset("assets/images/Vector.png",
                  width: MediaQuery.of(context).size.width * 0.5)),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return const eng_app_page();
                    }));
                  },
                  child: Container(
                    child: Image.asset("assets/images/ok.png",
                        width: MediaQuery.of(context).size.width * 0.8),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
