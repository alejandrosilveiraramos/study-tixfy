import 'package:tixfy/models/card_data.dart';

class CardDataMock {
  static List<CardData> getCardDataList() {
    return [
      CardData(
        id: '1', // set a unique id for each CardData object
        image: 'assets/images/cardSliderBanner/moQuiridoBanner.jpeg',
        title: 'Camarote Mô Quirino, Carnaval Floripa 2023',
        date: 'Sáb, 18 de Fevereiro',
        openingTime: 'Abertura: 20:00',
        location: 'Passarela Nego Quirino, Florianópolis - SC',
      ),
      CardData(
        id: '2', // set a unique id for each CardData object
        image: 'assets/images/cardSliderBanner/warungBanner.png',
        title: 'Warung Beach Club MATHAME, COLYN E MAIS!',
        date: 'Sex, 03 de Fevereiro',
        openingTime: 'Abertura 22:00 - Início 22:00',
        location: 'Warung Beach Club, Itajai - SC',
      ),
    ];
  }
}
