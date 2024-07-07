import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_app_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class eng_dark_slider1 extends StatefulWidget {
  const eng_dark_slider1({super.key});

  @override
  State<eng_dark_slider1> createState() => _eng_dark_slider1State();
}

class _eng_dark_slider1State extends State<eng_dark_slider1> {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "",
      body: "Tracking the stages of plant growth",
      image: Image.asset(
        'assets/images/5-01-01-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      decoration: const PageDecoration(
        pageColor: Colors.black,
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
        bodyTextStyle: TextStyle(
            fontSize: 35.0, fontStyle: FontStyle.italic, color: Colors.white),
        imagePadding: EdgeInsets.all(0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0), // Adjust title padding
      ),
    ),
    PageViewModel(
      title: "",
      body: " linking artificial intelligence with agriculture",
      image: Center(
          child: Image.asset(
        'assets/images/6887281_3467444-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            fontSize: 35.0, color: Colors.white, fontStyle: FontStyle.italic),
        imagePadding:
            EdgeInsets.fromLTRB(0, 50, 0, 0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0),
      ),
    ),
    PageViewModel(
      title: "",
      body: " Diagnosis of plant diseases",
      image: Center(
          child: Image.asset(
        'assets/images/6887281_34674442-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            fontSize: 35.0, color: Colors.white, fontStyle: FontStyle.italic),
        imagePadding: EdgeInsets.all(0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0),
      ),
    ),
    PageViewModel(
      title: "",
      body: " Tips for good fruits ",
      image: Center(
          child: Image.asset(
        'assets/images/6887281_34674443-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            fontSize: 35.0, color: Colors.white, fontStyle: FontStyle.italic),
        imagePadding: EdgeInsets.all(0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        // When done button is press
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => eng_dark_app_page()),
        );
      },
      onSkip: () {
        // You can also override onSkip callback
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => eng_dark_app_page()),
        );
      },
      showSkipButton: true,
      skip: const Text(
        "SKIP",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
      ),
      next: const Icon(
        Icons.arrow_forward_ios,
      ),
      done: const Text("DONE",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white)),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      globalBackgroundColor: Colors.black,
    );
  }
}
