import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

/// A class containing theme data for elevated buttons in the application.
class ElevatedButtonThemes {
  /// The color scheme used for elevated buttons.
  ///
  /// By default, it uses the primary color scheme from the `ColorSchemes` class.
  static ColorScheme colorScheme = ColorSchemes.primaryColorScheme;

  /// Theme data for elevated buttons in the application.
  ///
  /// This includes the button's background color, shape, visual density, and padding.
  static ElevatedButtonThemeData elevatedButtonTheme =ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.h),
      ),
      visualDensity: const VisualDensity(
        vertical: -4,
        horizontal: -4,
      ),
      padding: EdgeInsets.zero,
    ),
  );
}
