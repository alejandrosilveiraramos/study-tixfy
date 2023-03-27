import 'package:tixfy/models/expansion_panel_data.dart';

class ExpansionPanelDataMock {
  static List<ExpansionPanelData> getExpansionPanelData() {
    return [
      ExpansionPanelData(
        title: 'About',
        paragraph: 'About Body Lorem Lorem Lorem Lorem Lorem',
      ),
      ExpansionPanelData(
        title: 'Para consumidores',
        paragraph: 'Para consumidores Body Lorem Lorem Lorem Lorem Lorem',
      ),
    ];
  }
}
