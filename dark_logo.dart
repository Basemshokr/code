import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_choicepage.dart';

class dark_logo extends StatefulWidget {
  const dark_logo({super.key});

  @override
  State<dark_logo> createState() => _dark_logoState();
}

class _dark_logoState extends State<dark_logo> {
  @override
  void initState() {
    super.initState();
    // Use Future.delayed to navigate to the main page after 3 seconds
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the main page using the Navigator
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => dark_choicepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Build your splash screen UI here
    return Scaffold(
      backgroundColor: Color(0xFF95BD92),
      body: Image.asset("assets/images/Group 61.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height),
    );
  }
}
