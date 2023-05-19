import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(home: TestApp()));
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  Color _backgroundColor = Colors.white;

  void changeColor() {
    setState(() {
      _backgroundColor = generateRandomColor();
    });
  }

  Color generateRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Container(
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
