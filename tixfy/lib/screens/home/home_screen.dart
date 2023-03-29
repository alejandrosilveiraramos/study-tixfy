import 'package:flutter/material.dart';
import 'package:tixfy/models/card_data.dart';
import 'package:tixfy/models/expansion_panel_data.dart';
import 'package:tixfy/screens/home/sections/header_section.dart';
import 'package:tixfy/screens/home/sections/cards_slider_section.dart';
import 'package:tixfy/screens/home/sections/carousel_section.dart';
import 'package:tixfy/screens/home/sections/expansion_panel_home_section.dart';
import 'package:tixfy/screens/home/sections/navbar_section.dart';
import 'package:tixfy/mock/card_data.dart';
import 'package:tixfy/mock/expansion_data.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardData> cardDataList = CardDataMock.getCardDataList();
  final List<ExpansionPanelData> expansionPanelData =
      ExpansionPanelDataMock.getExpansionPanelData();

  CardData getCardDataById(String id) {
    return cardDataList.firstWhere((card) => card.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HeaderSection(),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarouselSection(),
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
                        id: cardDataList[index].id,
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: expansionPanelData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExpansionPanelHome(
                        expansionPanelData: expansionPanelData[index],
                      );
                    },
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
