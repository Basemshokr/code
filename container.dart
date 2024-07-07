// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class box extends StatelessWidget {
  const box({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.lightGreen),
            color: const Color.fromARGB(255, 255, 254, 254),
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Colors.grey, offset: Offset(2, 2))
            ]),
        alignment: Alignment.center,
        child: Column(
          children: children,
        ));
  }
}
