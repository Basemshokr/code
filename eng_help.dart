// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class eng_help extends StatelessWidget {
  const eng_help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            "assets/images/frame-1.png",
            width: 30,
            color: Colors.green,
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
              Navigator.of(context).pop();
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
                height: 30,
              ),
              Image.asset(
                "assets/images/Information about the program.png",
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/Frame 4 (1).png",
                width: MediaQuery.of(context).size.width * 0.9,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
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
                          const AssetImage("assets/images/faceboock.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => launchUrl(
                        Uri.parse("https://wa.me/qr/KUS6D5WA6DLWA1"),
                        mode: LaunchMode.externalApplication),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.07,
                      backgroundImage:
                          const AssetImage("assets/images/whatsaap.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => launchUrl(
                        Uri.parse(
                            "https://www.instagram.com/basem_shokr1?igsh=MTJqdno4dGsxMjRwOQ=="),
                        mode: LaunchMode.externalApplication),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.07,
                      backgroundImage:
                          const AssetImage("assets/images/insta.png"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
