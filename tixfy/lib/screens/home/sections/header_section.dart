import 'package:flutter/material.dart';
//theme
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 2, left: 15),
      decoration: const BoxDecoration(
        color: tixPrimary,
        boxShadow: [
          BoxShadow(
            color: tixDark,
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo/logo.png',
            fit: BoxFit.contain,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: tixLight,
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
                color: tixLight,
                padding: const EdgeInsets.only(right: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
