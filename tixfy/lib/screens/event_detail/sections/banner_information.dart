import 'package:flutter/material.dart';

import 'package:tixfy/models/card_data.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class BannerInformation extends StatefulWidget {
  final CardData cardData;
  const BannerInformation({Key? key, required this.cardData}) : super(key: key);

  @override
  State<BannerInformation> createState() => _BannerInformationState();
}

class _BannerInformationState extends State<BannerInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Image.asset(
            widget.cardData.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Container(
          color: tixGrey,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.cardData.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  widget.cardData.date,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Abertura: ${widget.cardData.openingTime}',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Local: ${widget.cardData.location}',
                  style: const TextStyle(
                    fontSize: 14,
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
