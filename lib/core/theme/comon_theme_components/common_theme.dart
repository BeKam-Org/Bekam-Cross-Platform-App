part of app_theme;

/// A collection of theme data for various common UI elements used throughout the application.
class CommonComponentsTheme {
  /// Returns the text theme styles used throughout the application.
  ///
  /// The [colorScheme] parameter is used to adapt text colors based on the overall color scheme.
  static TextTheme textTheme(ColorScheme colorScheme) =>
      TextThemes.textTheme(colorScheme);

  /// The theme data for elevated buttons used in the application.
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemes.elevatedButtonTheme;

  /// The theme data for dividers used in the application.
  static DividerThemeData dividerThemeData = DividerThemes.dividerTheme;

  /// The theme data for radio buttons used in the application.
  static RadioThemeData radioThemeData = RadioThemes.radioTheme;

  /// The theme data for page transition used in the application.
  static PageTransitionsTheme pageTransitionsTheme =
      PageTransitionsThemes.pageTransitionsTheme;
}
