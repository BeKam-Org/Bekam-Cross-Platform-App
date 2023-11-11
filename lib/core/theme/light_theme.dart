// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

/*------------------------------------------------------------------------------------------*/
/*------------------------------------  Light Theme  ---------------------------------------*/
/*------------------------------------------------------------------------------------------*/

ThemeData lightTheme = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: const Color.fromRGBO(144, 168, 88, 1),
  brightness: Brightness.light,
  highlightColor: Colors.white,
  hintColor: const Color(0xFF9E9E9E),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  ),
);
