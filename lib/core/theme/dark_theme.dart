// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

//*------------------------------------------------------------------------------------------*/
//*------------------------------------  Dark Theme  ---------------------------------------*/
//*------------------------------------------------------------------------------------------*/

ThemeData darkTheme = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: const Color(0xFF1B7FED),
  brightness: Brightness.dark,
  highlightColor: const Color(0xFF252525),
  hintColor: const Color(0xFFc7c7c7),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  ),
);
