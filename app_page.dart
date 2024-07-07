// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fruitful2/camera.dart';
import 'package:fruitful2/home.dart';

import 'package:fruitful2/settings.dart';

class app_page extends StatefulWidget {
  const app_page({super.key});

  @override
  State<app_page> createState() => _app_pageState();
}

class _app_pageState extends State<app_page> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    const home(),
    const camera(),
    const settings(),
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
            TabItem(icon: Icons.home, title: 'الصفحه الرئيسية'),
            TabItem(icon: Icons.camera, title: 'الكاميرا'),
            TabItem(icon: Icons.settings, title: 'الاعدادات'),
          ],
          onTap: _onItemTapped,
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
