// ignore_for_file: camel_case_types

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_camera.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_home.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_settings.dart';

class eng_dark_app_page extends StatefulWidget {
  const eng_dark_app_page({super.key});

  @override
  State<eng_dark_app_page> createState() => _eng_dark_app_pageState();
}

class _eng_dark_app_pageState extends State<eng_dark_app_page> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    eng_dark_home(),
    eng_dark_camera(),
    eng_dark_settings(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0XFF132213),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0XFF132213),
          activeColor: Color(0XFF0AA400),
          color: Color(0XFF95BD92),
          disableDefaultTabController: true,
          initialActiveIndex: _selectedIndex,
          items: [
            TabItem(icon: Icons.home, title: 'Home '),
            TabItem(icon: Icons.camera, title: 'Camera'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          onTap: _onItemTapped,
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
