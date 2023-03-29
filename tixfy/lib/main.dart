import 'package:flutter/material.dart';
//components
//theme
import 'package:tixfy/utils/colors/tixfy_colors.dart';
import 'package:tixfy/utils/routes/tixfy_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tixfy',
      theme: ThemeData(
        primarySwatch: tixSwatch,
      ),
      initialRoute: AppRoutes.home,
      routes: getRoutes(context),
    );
  }
}
