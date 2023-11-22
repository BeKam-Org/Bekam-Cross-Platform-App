part of app_theme;

/// ThemeData for the light theme configuration.
ThemeData lightTheme = ThemeData(
  /// Specifies the font family for the app.
  fontFamily: 'DM Sans',

  /// Defines the primary color used throughout the app.
  primaryColor: const Color.fromRGBO(144, 168, 88, 1),

  /// Sets the brightness to light mode.
  brightness: Brightness.light,

  /// Specifies the highlight color for UI elements.
  highlightColor: Colors.white,

  /// Specifies the hint color for UI elements.
  hintColor: const Color(0xFF9E9E9E),

  /// Defines the page transition animations for different platforms.
  pageTransitionsTheme: CommonComponentsTheme.pageTransitionsTheme,

  /// The text theme used throughout the application.
  textTheme: CommonComponentsTheme.textTheme(colorScheme),

  /// The theme data for elevated buttons.
  elevatedButtonTheme: CommonComponentsTheme.elevatedButtonThemeData,

  /// The theme data for radio buttons.
  radioTheme: CommonComponentsTheme.radioThemeData,

  /// The theme data for dividers.
  dividerTheme: CommonComponentsTheme.dividerThemeData,
);
