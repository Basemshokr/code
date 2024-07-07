// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';

import 'package:fruitful2/english_ligth_mode/eng_camera.dart';
import 'package:fruitful2/english_ligth_mode/eng_home.dart';
import 'package:fruitful2/english_ligth_mode/eng_settings.dart';

class eng_app_page extends StatefulWidget {
  const eng_app_page({super.key});

  @override
  State<eng_app_page> createState() => _eng_app_pageState();
}

class _eng_app_pageState extends State<eng_app_page> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    const eng_home(),
    const eng_camera(),
    const eng_settings(),
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
        backgroundColor: Colors.white,
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: const Color(0xFF95BD92),
          activeColor: Colors.white,
          color: Colors.black,
          disableDefaultTabController: true,
          initialActiveIndex: _selectedIndex,
          items: const [
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
