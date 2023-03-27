import 'package:flutter/material.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class CardsSliderSection extends StatefulWidget {
  const CardsSliderSection({Key? key}) : super(key: key);

  @override
  CardsSliderSectionState createState() => CardsSliderSectionState();
}

class CardsSliderSectionState extends State<CardsSliderSection> {
  final String _images = 'assets/images/moQuiridoBanner.jpeg';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 348,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4)),
                  child: Image.asset(
                    _images,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  'Camarote Mô Quirino, Carnaval Floripa 2023',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  'Sáb, 18 de Fevereiro',
                  style: TextStyle(
                    fontSize: 12,
                    color: tixPrimary,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  'Abertura: 20:00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  'Passarela Nego Quirino, Florianópolis - SC',
                  style: TextStyle(
                    fontSize: 12,
                    color: tixMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
