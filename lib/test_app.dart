// ignore_for_file: public_member_api_docs

import 'dart:math';
import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  Color _backgroundColor = Colors.white;

  /// Changes the background color to a random color.
  void changeColor() {
    setState(() {
      _backgroundColor = generateRandomColor();
    });
  }

  /// Generates a random color.
  ///
  /// Returns a random color value.
  Color generateRandomColor() {
    final random = Random();
    const int maxColorValue = 256;
    {
      return Color.fromRGBO(
        random.nextInt(maxColorValue),
        random.nextInt(maxColorValue),
        random.nextInt(maxColorValue),
        1.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: ColoredBox(
        color: _backgroundColor,
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
