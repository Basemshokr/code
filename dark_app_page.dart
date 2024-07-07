// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fruitful2/darkmode/dark_camera2.dart';
import 'package:fruitful2/darkmode/dark_home.dart';
import 'package:fruitful2/darkmode/dark_settings.dart';

class dark_app_page extends StatefulWidget {
  const dark_app_page({super.key});

  @override
  State<dark_app_page> createState() => _dark_app_pageState();
}

class _dark_app_pageState extends State<dark_app_page> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    const dark_home(),
    const dark_camera2(),
    const dark_settings(),
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
        backgroundColor: const Color(0XFF132213),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: const Color(0XFF132213),
          activeColor: const Color(0XFF0AA400),
          color: const Color(0XFF95BD92),
          disableDefaultTabController: true,
          initialActiveIndex: _selectedIndex,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const TabItem(icon: Icons.home, title: 'الصفحه الرئيسية'),
            const TabItem(icon: Icons.camera, title: 'الكاميرا'),
            const TabItem(icon: Icons.settings, title: 'الاعدادات'),
          ],
          onTap: _onItemTapped,
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
