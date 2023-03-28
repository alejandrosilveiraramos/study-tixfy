import 'package:flutter/material.dart';
import 'package:tixfy/models/card_data.dart';
import 'package:tixfy/screens/event_detail/principal_event_detail.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class CardsSliderSection extends StatelessWidget {
  final CardData cardData;

  const CardsSliderSection({Key? key, required this.cardData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
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
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrincipalEventDetail(),
                        ),
                      );
                    },
                    child: Image.asset(
                      cardData.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  cardData.title,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  cardData.date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: tixPrimary,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  cardData.openingTime,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Text(
                  cardData.location,
                  style: const TextStyle(
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
