part of app_theme;

/// ThemeData for the dark theme configuration.
ThemeData darkTheme = ThemeData(
  /// Font family for the app's text elements.
  fontFamily: 'DM Sans',

  /// Primary color used throughout the app.
  primaryColor: const Color.fromRGBO(144, 168, 88, 1),

  /// Brightness set to dark for the dark theme.
  brightness: Brightness.dark,

  /// Color used for highlighting elements in the dark theme.
  highlightColor: const Color(0xFF252525),

  /// Color used for hints and placeholders in the dark theme.
  hintColor: const Color(0xFFc7c7c7),

  /// Defines the page transition animations for different platforms.
  pageTransitionsTheme: CommonComponentsTheme.pageTransitionsTheme,

  /// The text theme used throughout the application.
  textTheme: CommonComponentsTheme.textTheme(Get.colorScheme),

  /// The theme data for elevated buttons.
  elevatedButtonTheme: CommonComponentsTheme.elevatedButtonThemeData,

  /// The theme data for radio buttons.
  radioTheme: CommonComponentsTheme.radioThemeData,

  /// The theme data for dividers.
  dividerTheme: CommonComponentsTheme.dividerThemeData,
);
