import 'package:flutter/material.dart';
import 'package:fruitful2/english_ligth_mode/eng_help.dart';

class eng_date extends StatefulWidget {
  const eng_date({super.key});

  @override
  State<eng_date> createState() => _eng_dateState();
}

class _eng_dateState extends State<eng_date> {
  final List<String> images = [
    'assets/images/Property 1=Frame 1.png',
    'assets/images/Property 1=Frame 2.png',
    'assets/images/Property 1=Frame 3.png',
    'assets/images/Property 1=Frame 4.png',
    'assets/images/Property 1=Frame 5.png',
    'assets/images/Property 1=Frame 6.png',
    'assets/images/Property 1=Frame 7.png',
    'assets/images/Property 1=Frame 8.png',
    'assets/images/Property 1=Frame 9.png',
    'assets/images/Property 1=Frame 10.png',
    'assets/images/Property 1=Frame 11.png',
    'assets/images/Property 1=Frame 12.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return eng_help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
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
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.asset(
            images[index],
            fit: BoxFit.fill,
            width: double.infinity,
          );
        },
      ),
    );
  }
}
