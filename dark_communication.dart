import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_app_page.dart';
import 'package:fruitful2/darkmode/dark_help.dart';

class dark_communication extends StatefulWidget {
  const dark_communication({super.key});

  @override
  State<dark_communication> createState() => _dark_communicationState();
}

class _dark_communicationState extends State<dark_communication> {
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
                return dark_help();
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
                return dark_app_page();
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
                "assets/images/أرسل إلينا سؤالك.png",
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
                          hintText: '...اكتب رسالتك هنا',
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
                      return dark_send();
                    }));
                  },
                  child: Text(
                    "ارسال",
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

class dark_send extends StatefulWidget {
  const dark_send({super.key});

  @override
  State<dark_send> createState() => _sendState();
}

class _sendState extends State<dark_send> {
  void initState() {
    super.initState();
    // Use Future.delayed to navigate to the main page after 3 seconds
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the main page using the Navigator
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => dark_communication()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  return dark_help();
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
                  return dark_app_page();
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
        backgroundColor: Color(0xff132213),
        body: Center(
          child: Image.asset(
            "assets/images/شكرا لتواصلك معنا تم إرسال سؤالك بنجاح.png",
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
          ),
        ));
  }
}
