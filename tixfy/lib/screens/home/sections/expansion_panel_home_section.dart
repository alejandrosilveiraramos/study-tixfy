import 'package:flutter/material.dart';
//model
import 'package:tixfy/models/expansion_panel_data.dart';
//theme
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class ExpansionPanelHome extends StatefulWidget {
  final ExpansionPanelData expansionPanelData;

  const ExpansionPanelHome({
    Key? key,
    required this.expansionPanelData,
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
        iconTheme: const IconThemeData(
          color: tixLight,
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 1), // Add vertical padding
        child: ExpansionPanelList(
          animationDuration: const Duration(seconds: 1),
          dividerColor: tixLight, // Set divider color here
          elevation: 1,
          expandedHeaderPadding: const EdgeInsets.all(8),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _isExpanded = !isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(widget.expansionPanelData.title),
                );
              },
              body: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 16), // Add horizontal padding
                child: Align(
                  alignment: Alignment.topLeft, // Align text to the start
                  child: Text(
                    widget.expansionPanelData.paragraph,
                  ),
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
