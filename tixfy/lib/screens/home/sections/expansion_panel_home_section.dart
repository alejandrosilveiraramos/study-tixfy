import 'package:flutter/material.dart';
import 'package:tixfy/models/Expansion_Panel_data.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class ExpansionPanelHome extends StatefulWidget {
  final String title;
  final String paragraph;

  const ExpansionPanelHome({
    Key? key,
    required this.title,
    required this.paragraph,
  }) : super(key: key);

  @override
  State<ExpansionPanelHome> createState() => _ExpansionPanelHomeState();
}

class _ExpansionPanelHomeState extends State<ExpansionPanelHome> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: tixPrimary,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: tixLight),
        ),
      ),
      child: ExpansionPanelTheme(
        data: ExpansionPanelThemeData(
          iconColor: Colors.blue, // set the custom color for the expansion icon
        ),
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _isExpanded = !isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(widget.title),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.paragraph,
                ),
              ),
              isExpanded: _isExpanded,
            ),
          ],
        ),
      ),
    );
  }
}
