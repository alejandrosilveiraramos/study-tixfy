import 'package:flutter/material.dart';
import 'package:tixfy/models/card_data.dart';

//Components
import 'package:tixfy/screens/home/sections/header_section.dart';
import 'package:tixfy/screens/home/sections/navbar_section.dart';
import 'package:tixfy/screens/home/sections/expansion_panel_home_section.dart';
import 'package:tixfy/screens/event_detail/sections/banner_information.dart';
import 'package:tixfy/screens/event_detail/sections/description_information.dart';
//Mock
import 'package:tixfy/mock/expansion_data.dart';
//Models
import 'package:tixfy/models/expansion_panel_data.dart';

class PrincipalEventDetail extends StatefulWidget {
  final CardData? cardData;

  const PrincipalEventDetail({Key? key, this.cardData}) : super(key: key);

  @override
  State<PrincipalEventDetail> createState() => _PrincipalEventDetailState();
}

class _PrincipalEventDetailState extends State<PrincipalEventDetail> {
  final List<ExpansionPanelData> expansionPanelData =
      ExpansionPanelDataMock.getExpansionPanelData();

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
              BannerInformation(cardData: widget.cardData!),
              const DescriptionInformation(),

              Padding(
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
              //Footer --End
            ],
          ),
        ),
      ),
      floatingActionButton: BuyTicketButton(
        buttonText: 'Comprar Ingressos',
        buttonIcon: Icons.confirmation_num_outlined,
        onPressed: () {
          // Do something when the button is pressed
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
