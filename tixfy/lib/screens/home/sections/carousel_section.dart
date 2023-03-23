import 'package:flutter/material.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class CarouselSection extends StatefulWidget {
  const CarouselSection({Key? key}) : super(key: key);

  @override
  CarouselSectionState createState() => CarouselSectionState();
}

class CarouselSectionState extends State<CarouselSection> {
  int _currentIndex = 0;

  final List<String> _images = [
    'assets/images/skankBanner.png',
    'assets/images/blackBanner.png',
    'assets/images/wesleyBanner.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          _images[_currentIndex],
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex - 1) % _images.length;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: tixSecondary),
                  child: const Icon(
                    Icons.arrow_back,
                    color: tixLight,
                    size: 18,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex + 1) % _images.length;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: tixSecondary),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: tixLight,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
