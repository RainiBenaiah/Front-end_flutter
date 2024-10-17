import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';

void main() {
  runApp(SmartIrrigationApp());
}

class SmartIrrigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Irrigation',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color.fromARGB(255, 80, 247, 47),
      ),
      home: IntroScreen(),
    );
  }
}
