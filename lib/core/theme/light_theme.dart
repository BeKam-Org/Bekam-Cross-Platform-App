// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// ThemeData for the light theme configuration.
ThemeData lightTheme = ThemeData(
  /// Specifies the font family for the app.
  fontFamily: 'TitilliumWeb',

  /// Defines the primary color used throughout the app.
  primaryColor: const Color.fromRGBO(144, 168, 88, 1),

  /// Sets the brightness to light mode.

  brightness: Brightness.light,

  /// Specifies the highlight color for UI elements.

  highlightColor: Colors.white,

  /// Specifies the hint color for UI elements.

  hintColor: const Color(0xFF9E9E9E),

  /// Defines the page transition animations for different platforms.

  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  ),
);
