import 'package:flutter/material.dart';
import 'package:tixfy/screens/event_detail/principal_event_detail.dart';

import 'package:tixfy/screens/home/home_screen.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) {
  return {
    AppRoutes.home: (context) => const HomeScreen(),
    AppRoutes.principalEventDetail: (context) => const PrincipalEventDetail(),
  };
}

class AppRoutes {
  static const String home = '/home';
  static const String principalEventDetail = '/principal-event-detail';
}
