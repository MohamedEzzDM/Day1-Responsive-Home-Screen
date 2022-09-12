import 'package:challenge_day1/screens/home/home_screen.dart';
import 'package:challenge_day1/size_config.dart';
import 'package:challenge_day1/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Inspiration app',
      theme: themData,
      home: const HomeScreen(),

    );
  }
}

