// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruitful2/app_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "",
      body: "تتبع مراحل نمو النبات",
      image: Image.asset(
        'assets/images/5-01-01-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
        bodyTextStyle: TextStyle(fontSize: 35.0, fontStyle: FontStyle.italic),
        imagePadding: EdgeInsets.all(0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0), // Adjust title padding
      ),
    ),
    PageViewModel(
      title: "",
      body: "ربط الذكاء الاصطناعي مع الزراعه",
      image: Center(
          child: Image.asset(
        'assets/images/6887281_3467444-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 35.0),
        imagePadding:
            EdgeInsets.fromLTRB(0, 50, 0, 0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0),
      ),
    ),
    PageViewModel(
      title: "",
      body: "تشخيص امراض النباتات",
      image: Center(
          child: Image.asset(
        'assets/images/6887281_34674442-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 35.0),
        imagePadding: EdgeInsets.all(0), // Remove padding around the image
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
        titlePadding: EdgeInsets.only(top: 150.0),
      ),
    ),
    PageViewModel(
      title: "",
      body: "نصائح من أجل ثمار جيده",
      image: Center(
          child: Image.asset(
        'assets/images/6887281_34674443-01 1.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 35.0),
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
          MaterialPageRoute(builder: (context) => app_page()),
        );
      },
      onSkip: () {
        // You can also override onSkip callback
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => app_page()),
        );
      },
      showSkipButton: true,
      skip: const Text(
        "تخطي",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      next: const Icon(
        Icons.arrow_forward_ios,
      ),
      done: const Text("لنبدأ",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black)),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
