part of values;

/// A utility class that provides access to commonly used color schemes and text themes.
class Get {
  /// The color scheme used throughout the application.
  static ColorScheme colorScheme = ColorSchemes.primaryColorScheme;

  /// The text theme styles used throughout the application.
  static TextTheme textTheme = TextThemes.textTheme(colorScheme);
}
