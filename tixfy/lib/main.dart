import 'package:flutter/material.dart';
import 'package:tixfy/screens/home/home_screen.dart';

import 'package:tixfy/utils/colors/tixfy_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tixfy',
      theme: ThemeData(
        primarySwatch: tixSwatch,
      ),
      home: const HomeScreen(),
    );
  }
}
