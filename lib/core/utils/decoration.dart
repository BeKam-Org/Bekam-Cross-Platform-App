part of values;

/// A class that provides predefined [BoxDecoration] instances for use in UI design.
class GlobalAppDecoration {
  // Fill decorations

  /// A BoxDecoration with the fill color from the theme's blueGray50.
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: GlobalAppColors.blueGray50,
      );

  /// A BoxDecoration with the fill color from the theme's deepOrange50.
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: GlobalAppColors.primaryColor50,
      );

  /// A BoxDecoration with a partially transparent fill color from the theme's deepOrange50.
  static BoxDecoration get fillDeeporange50 => BoxDecoration(
        color: GlobalAppColors.primaryColor50.withOpacity(0.2),
      );

  /// A BoxDecoration with the fill color from the theme's gray100.
  static BoxDecoration get fillGray => BoxDecoration(
        color: GlobalAppColors.gray100,
      );

  /// A BoxDecoration with the fill color from the theme's onPrimary.
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: ColorSchemes.primaryColorScheme.onPrimary,
      );

  /// A BoxDecoration with the fill color from the theme's onPrimaryContainer.
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: ColorSchemes.primaryColorScheme.onPrimaryContainer,
      );

  /// A BoxDecoration with the fill color from the theme's primary.
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: ColorSchemes.primaryColorScheme.primary,
      );

  /// A BoxDecoration with the fill color from the theme's yellow50.
  static BoxDecoration get fillYellow => BoxDecoration(
        color: GlobalAppColors.yellow50,
      );

  /// A BoxDecoration with a partially transparent fill color from the theme's yellow800.
  static BoxDecoration get fillYellow800 => BoxDecoration(
        color: GlobalAppColors.yellow800.withOpacity(0.8),
      );

  // Gradient decorations

  /// A BoxDecoration with a gradient from the theme's amber300 to amber100.
  static BoxDecoration get gradientAmberToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.85, 0.07),
          end: const Alignment(0.17, 1.03),
          colors: [
            GlobalAppColors.amber300,
            GlobalAppColors.amber100,
          ],
        ),
      );

  /// A BoxDecoration with a gradient from the theme's purpleA700 to deepPurple100.
  static BoxDecoration get gradientPurpleAToDeepPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.85, 0.07),
          end: const Alignment(0.17, 1.03),
          colors: [
            GlobalAppColors.purpleA700,
            GlobalAppColors.deepPurple100,
          ],
        ),
      );

  /// A BoxDecoration with a gradient from the theme's red600 to primaryContainer.
  static BoxDecoration get gradientRedToPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.51, 0.54),
          end: const Alignment(0.5, 1.09),
          colors: [
            GlobalAppColors.red600,
            ColorSchemes.primaryColorScheme.primaryContainer,
          ],
        ),
      );

  /// A BoxDecoration with a gradient from the theme's teal500 to green200Af.
  static BoxDecoration get gradientTealToGreenAf => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.96, 0.01),
          end: const Alignment(0.04, 0.99),
          colors: [
            GlobalAppColors.teal500,
            GlobalAppColors.green200Af,
          ],
        ),
      );

  /// A BoxDecoration with a gradient from the theme's yellowA700 to amberA40002.
  static BoxDecoration get gradientYellowAToAmberA => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.85, 0.07),
          end: const Alignment(0.17, 1.03),
          colors: [
            GlobalAppColors.yellowA700,
            GlobalAppColors.amberA40002,
          ],
        ),
      );

  // Outline decorations

  /// A BoxDecoration with a border outline using the theme's gray100.
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: GlobalAppColors.gray100,
          width: 1.myWidth,
        ),
      );

  /// A BoxDecoration with a filled color, shadow, and border outline using the theme's onPrimaryContainer and gray90021.
  static BoxDecoration get outlineGray90021 => BoxDecoration(
        color: ColorSchemes.primaryColorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: GlobalAppColors.gray90021,
            spreadRadius: 2.myWidth,
            blurRadius: 2.myWidth,
            offset: const Offset(
              0,
              7,
            ),
          ),
        ],
      );

  /// A BoxDecoration with a filled color, shadow, and border outline using the theme's amberA400 and gray90021.
  static BoxDecoration get outlineGray900211 => BoxDecoration(
        color: GlobalAppColors.amberA400,
        boxShadow: [
          BoxShadow(
            color: GlobalAppColors.gray90021,
            spreadRadius: 2.myWidth,
            blurRadius: 2.myWidth,
            offset: const Offset(
              0,
              7,
            ),
          ),
        ],
      );
}
