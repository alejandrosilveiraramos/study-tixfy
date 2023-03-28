import 'package:flutter/material.dart';
import 'package:tixfy/mock/expansion_data.dart';
import 'package:tixfy/models/expansion_panel_data.dart';
import 'package:tixfy/screens/home/sections/expansion_panel_home_section.dart';
//Components
import 'package:tixfy/screens/home/sections/header_section.dart';
import 'package:tixfy/screens/home/sections/navbar_section.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class PrincipalEventDetail extends StatefulWidget {
  const PrincipalEventDetail({Key? key}) : super(key: key);

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
              SizedBox(
                child: Image.asset(
                  'assets/images/skankBanner.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: tixGrey,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Skank Despedida',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Text(
                                  'Sab, 19 de dezembro de 2022',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Abertura: 13:00 hrs',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Local: Arena Central',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'informações gerais',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: tixPrimary,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Perguntas frequentes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: tixPrimary,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Classificação',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: tixPrimary,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'IMG 10 Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Local do evento',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: tixPrimary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Rodovia Jornalista Maurício Sirotski Sobrinho, 1050 Jurerê, Florianópolis - SC, 88053-700',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  // Add your button's onPress action here
                                },
                                padding: EdgeInsets.zero,
                                minWidth: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  side: BorderSide.none,
                                ),
                                child: Row(
                                  children: const [
                                    Icon(Icons
                                        .location_on_outlined), // Replace icon_name_here with your desired icon
                                    SizedBox(width: 5),
                                    Text(
                                      'Ver no mapa',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Sobre o organizador',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: tixPrimary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Carlos Nalderson',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  // Add your button's onPress action here
                                },
                                padding: EdgeInsets.zero,
                                minWidth: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  side: BorderSide.none,
                                ),
                                child: Row(
                                  children: const [
                                    Icon(Icons
                                        .mail_outline), // Replace icon_name_here with your desired icon
                                    SizedBox(width: 5),
                                    Text(
                                      'Falar com o organizador',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
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
              //Footer --End
            ],
          ),
        ),
      ),
    );
  }
}
