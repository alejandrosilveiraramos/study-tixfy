import 'package:flutter/material.dart';
import 'package:tixfy/models/card_data.dart';
import 'package:tixfy/screens/home/sections/cards_slider_section.dart';
import 'package:tixfy/screens/home/sections/carousel_section.dart';
import 'package:tixfy/screens/home/sections/expansion_panel_home_section.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardData> cardDataList = [
    CardData(
      image: 'assets/images/cardSliderBanner/moQuiridoBanner.jpeg',
      title: 'Camarote Mô Quirino, Carnaval Floripa 2023',
      date: 'Sáb, 18 de Fevereiro',
      openingTime: 'Abertura: 20:00',
      location: 'Passarela Nego Quirino, Florianópolis - SC',
    ),
    CardData(
      image: 'assets/images/cardSliderBanner/warungBanner.png',
      title: 'Warung Beach Club MATHAME, COLYN E MAIS!',
      date: 'Sex, 03 de Fevereiro',
      openingTime: 'Abertura 22:00 - Início 22:00',
      location: 'Warung Beach Club, Itajai - SC',
    )
  ];

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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Section Carousel Section --Start
              const CarouselSection(),
              // First Section Carousel Section --End
              // Card Sliders Sections --Start
              const Padding(
                padding: EdgeInsets.only(left: 12, top: 10),
                child: Text(
                  'Em Alta',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: tixPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: 380,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardsSliderSection(
                        cardData: cardDataList[index],
                      );
                    },
                  ),
                ),
              ),
              const ExpansionPanelHome(
                title: 'Quem somos',
                paragraph:
                    'Quem Somos Paragraph Lorem Lorem Lorem  Lorem  Lorem  Lorem  Lorem  Lorem  Lorem  ',
              ),
              // Card Sliders Sections --End
            ],
          ),
        ),
      ),
    );
  }
}
