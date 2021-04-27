import 'package:DevQuiz/screens/challenge.dart';
import 'package:DevQuiz/screens/home.dart';
import 'package:DevQuiz/screens/splash.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomeScreen(),
    );
  }
}
