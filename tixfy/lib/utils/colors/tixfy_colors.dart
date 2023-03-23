import 'package:flutter/material.dart';

const Color tixPrimary = Color(0xFFFF0047);
const Color tixSecondary = Color(0xff000000);
const Color tixLight = Color(0xFFF0F1F5);
const Color tixMedium = Color(0xFF7D7D7D);
const Color tixDark = Color(0xFF323F38);

MaterialColor tixSwatch = MaterialColor(
  tixPrimary.value,
  const <int, Color>{
    50: tixLight,
    100: tixLight,
    200: tixLight,
    300: tixMedium,
    400: tixMedium,
    500: tixPrimary,
    600: tixPrimary,
    700: tixPrimary,
    800: tixDark,
    900: tixDark,
  },
);
