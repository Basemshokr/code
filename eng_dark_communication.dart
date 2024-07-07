import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_app_page.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_help.dart';

class eng_dark_communication extends StatefulWidget {
  const eng_dark_communication({super.key});

  @override
  State<eng_dark_communication> createState() => _eng_dark_communicationState();
}

class _eng_dark_communicationState extends State<eng_dark_communication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132213),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return eng_dark_help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
              color: Color(0xff87C488),
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return eng_dark_app_page();
              }));
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
              color: Color(0xff87C488),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/Send us your question.png",
                width: MediaQuery.of(context).size.width * 0.7,
                color: Colors.white,
              ),
              SizedBox(
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
                        width: 1, color: Color.fromARGB(255, 36, 122, 38)),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(
                          hintText: 'Write your message ...',
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
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 46, 100, 48)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return eng_dark_send();
                    }));
                  },
                  child: Text(
                    "send",
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

class eng_dark_send extends StatefulWidget {
  const eng_dark_send({super.key});

  @override
  State<eng_dark_send> createState() => _eng_dark_sendState();
}

class _eng_dark_sendState extends State<eng_dark_send> {
  void initState() {
    super.initState();
    // Use Future.delayed to navigate to the main page after 3 seconds
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the main page using the Navigator
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => eng_dark_communication()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132213),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/top vector (1).png",
                width: MediaQuery.of(context).size.width,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.45,
              child: Image.asset(
                "assets/images/frame-3.png",
                width: 50,
                color: Color(0xff87C488),
              )),
          Positioned(
              top: 25,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return eng_dark_help();
                  }));
                },
                child: Image.asset(
                  "assets/images/frame-1.png",
                  width: 30,
                  color: Color(0xff87C488),
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
                  color: Color(0xff87C488),
                ),
              )),
          Positioned(
              top: 450,
              left: 60,
              child: Image.asset(
                "assets/images/Thank you for contacting us Your question has been sent successfully.png",
                width: 300,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
