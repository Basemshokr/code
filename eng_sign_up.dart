// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:fruitful2/english_ligth_mode/eng_correctlogin.dart';
import 'package:fruitful2/english_ligth_mode/english_login.dart';

class eng_sign_up extends StatefulWidget {
  const eng_sign_up({super.key});

  @override
  State<eng_sign_up> createState() => _eng_sign_upState();
}

class _eng_sign_upState extends State<eng_sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Positioned(
            top: 0,
            child: Image.asset("assets/images/ok (6).png",
                width: MediaQuery.of(context).size.width)),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.23,
            child: Image.asset("assets/images/ok (7).png",
                width: MediaQuery.of(context).size.width)),
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
                        width: 1, color: const Color.fromARGB(255, 28, 95, 30)),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email ',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: const Color.fromARGB(255, 28, 95, 30)),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'phone number  ',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: const Color.fromARGB(255, 28, 95, 30)),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'password  ',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: const Color.fromARGB(255, 28, 95, 30)),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' confirm password   ',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const eng_correctlogin();
                  }));
                },
                child: Image.asset(
                  "assets/images/ok (15).png",
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const eng_login();
                  }));
                },
                child: const Text(
                  "sign in ",
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 40, 91, 41)),
                ),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
