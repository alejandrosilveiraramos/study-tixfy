import 'package:flutter/material.dart';
import 'package:tixfy/screens/home/sections/carousel_section.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tixPrimary,
        centerTitle: false,
        elevation: 01,
        title: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
                padding: const EdgeInsets.only(right: 15),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: const [
              CarouselSection(),
            ],
          ),
        ),
      ),
    );
  }
}
