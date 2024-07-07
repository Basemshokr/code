// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class eng_dark_help extends StatefulWidget {
  const eng_dark_help({super.key});

  @override
  State<eng_dark_help> createState() => _eng_dark_helpState();
}

class _eng_dark_helpState extends State<eng_dark_help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF132213),
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          Image.asset(
            "assets/images/frame-1.png",
            width: 30,
            color: Colors.green,
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff132213),
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
              color: Color(0xff95BD92),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      backgroundColor: Color(0xff132213),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/Information about the program.png",
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/Frame 4 (1).png",
                width: MediaQuery.of(context).size.width * 0.9,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                  ),
                  GestureDetector(
                    onTap: () => launchUrl(
                        Uri.parse(
                            "https://www.facebook.com/profile.php?id=100055374805476&mibextid=ZbWKwL"),
                        mode: LaunchMode.externalApplication),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.07,
                      backgroundImage:
                          AssetImage("assets/images/faceboock.png"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => launchUrl(
                        Uri.parse("https://wa.me/qr/KUS6D5WA6DLWA1"),
                        mode: LaunchMode.externalApplication),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.07,
                      backgroundImage: AssetImage("assets/images/whatsaap.png"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => launchUrl(
                        Uri.parse(
                            "https://www.instagram.com/basem_shokr1?igsh=MTJqdno4dGsxMjRwOQ=="),
                        mode: LaunchMode.externalApplication),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.07,
                      backgroundImage: AssetImage("assets/images/insta.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
