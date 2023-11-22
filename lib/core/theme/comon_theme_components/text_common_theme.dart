part of app_theme;

/// Class containing the supported text theme styles.
class TextThemes {
  /// Generates a [TextTheme] based on the provided [ColorScheme].
  ///
  /// The [TextTheme] includes various text styles for different purposes
  /// such as body text in different sizes, headlines, labels, and titles.
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 12.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 24.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: GlobalAppColors.blueGray40001,
          fontSize: 12.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 10.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 20.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: GlobalAppColors.blueGray900,
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
      );
}
