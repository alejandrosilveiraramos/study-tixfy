import 'package:tixfy/models/navbar_data.dart';

class NavBarDataMock {
  static List<NavBarData> getNavBarData() {
    return [
      NavBarData(
        iconBar: 'login',
        titleBar: 'Entrar',
      ),
      NavBarData(
        iconBar: 'person',
        titleBar: 'Criar Conta',
      ),
      NavBarData(
        iconBar: 'location',
        titleBar: 'Localização',
      ),
      NavBarData(
        iconBar: 'help',
        titleBar: 'Ajuda',
      ),
    ];
  }
}
