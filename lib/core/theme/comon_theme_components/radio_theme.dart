part of app_theme;

/// A class containing theme data for radio buttons in the application.
class RadioThemes {
  /// The color scheme used for radio buttons.
  ///
  /// By default, it uses the primary color scheme from the `ColorSchemes` class.
  static ColorScheme colorScheme = ColorSchemes.primaryColorScheme;

  /// Theme data for radio buttons in the application.
  ///
  /// This includes the fill color based on the selected state and visual density.
  static RadioThemeData radioTheme = RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return colorScheme.primary;
      }
      return colorScheme.onSurface;
    }),
    visualDensity: const VisualDensity(
      vertical: -4,
      horizontal: -4,
    ),
  );
}
