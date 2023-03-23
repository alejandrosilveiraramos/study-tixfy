import 'package:flutter/material.dart';

class CardsSliderSection extends StatefulWidget {
  const CardsSliderSection({Key? key}) : super(key: key);

  @override
  CardsSliderSectionState createState() => CardsSliderSectionState();
}

class CardsSliderSectionState extends State<CardsSliderSection> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.fromLTRB(140, 168, 120, 168),
        ),
      ),
    );
  }
}
