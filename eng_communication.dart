// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:fruitful2/english_ligth_mode/eng_app_page.dart';
import 'package:fruitful2/english_ligth_mode/eng_help.dart';
import 'package:fruitful2/help.dart';

class eng_communication extends StatefulWidget {
  const eng_communication({super.key});

  @override
  State<eng_communication> createState() => _eng_communicationState();
}

class _eng_communicationState extends State<eng_communication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return const eng_help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 9,
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          const Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return const eng_app_page();
              }));
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/Send us your question.png",
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 1, color: const Color.fromARGB(255, 28, 95, 30)),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(
                          hintText: 'Write your message here ..',
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
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 46, 100, 48)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return const send();
                    }));
                  },
                  child: const Text(
                    "Send",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class send extends StatefulWidget {
  const send({super.key});

  @override
  State<send> createState() => _sendState();
}

class _sendState extends State<send> {
  void initState() {
    super.initState();
    // Use Future.delayed to navigate to the main page after 3 seconds
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the main page using the Navigator
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const eng_communication()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/top vector.png",
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.45,
              child: Image.asset(
                "assets/images/frame-3.png",
                width: 50,
              )),
          Positioned(
              top: 25,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const help();
                  }));
                },
                child: Image.asset(
                  "assets/images/frame-1.png",
                  width: 30,
                ),
              )),
          Positioned(
              top: 25,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  "assets/images/frame-2.png",
                  width: 30,
                ),
              )),
          Positioned(
              top: 450,
              left: 60,
              child: Image.asset(
                "assets/images/Thank you for contacting us Your question has been sent successfully.png",
                width: 300,
              ))
        ],
      ),
    );
  }
}
