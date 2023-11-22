part of values;

/// A class that provides a set of global application colors.
class GlobalAppColors {
  //primary color
  static const primaryColor = Color.fromRGBO(144, 168, 88, 1);

  // Amber
  static Color get amber100 => const Color(0XFFFEF0A9);
  static Color get amber10001 => const Color(0XFFFFF0B3);
  static Color get amber300 => const Color(0XFFEACC4A);
  static Color get amber400 => const Color(0XFFF9D11F);
  static Color get amber800 => const Color(0XFFFF8B00);
  static Color get amberA400 => const Color(0XFFFFC400);
  static Color get amberA40001 => const Color(0XFFFFCC00);
  static Color get amberA40002 => const Color(0XFFECBC00);

  // Black
  static Color get black900 => const Color(0XFF000000);

  // Blue
  static Color get blueA200 => const Color(0XFF3C79E6);

  // BlueGray
  static Color get blueGray30087 => const Color(0X8797A0AF);
  static Color get blueGray400 => const Color(0XFF79859A);
  static Color get blueGray40001 => const Color(0XFF7A869A);
  static Color get blueGray50 => const Color(0XFFEBECF0);
  static Color get blueGray700 => const Color(0XFF42526D);
  static Color get blueGray900 => const Color(0XFF162B4D);

  // DeepOrange
  static Color get primaryColor50 => primaryColor.withOpacity(0.3);
  static Color get primaryColorA70001 => primaryColor;

  // DeepPurple
  static Color get deepPurple100 => const Color(0XFFCEA9FE);

  // Gray
  static Color get gray100 => const Color(0XFFF4F5F7);
  static Color get gray400 => const Color(0XFFC1C6D0);
  static Color get gray40001 => const Color(0XFFC1C7D0);
  static Color get gray90021 => const Color(0X211E1A11);

  // GreenAf
  static Color get green200Af => const Color(0XAF8FE3B5);

  // Green
  static Color get green500 => const Color(0XFF44C868);
  static Color get green800 => const Color(0XFF008938);

  // Orange
  static Color get orange200 => const Color(0XFFF7BE7F);
  static Color get orange400 => const Color(0XFFFF991F);

  // Purple
  static Color get purple800 => const Color(0XFF682A8F);
  static Color get purpleA700 => const Color(0XFF9C16F1);

  // Red
  static Color get red600 => const Color(0XFFE33753);
  static Color get red60001 => const Color(0XFFEE1D23);

  // Teal
  static Color get teal400 => const Color(0XFF36B37E);
  static Color get teal500 => const Color(0XFF0DA86E);
  static Color get teal700 => const Color(0XFF00875A);
  static Color get teal900 => const Color(0XFF00623D);

  // Yellow
  static Color get yellow100 => const Color(0XFFFFF5CC);
  static Color get yellow50 => const Color(0XFFFFF9E5);
  static Color get yellow800 => const Color(0XFFEF9F27);
  static Color get yellowA700 => const Color(0XFFFDD601);
}

/// A class that defines a custom color scheme named `primaryColorScheme`.
class ColorSchemes {
  /// A static instance of the `ColorScheme` class representing the primary color scheme.
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors

    /// The primary color for elements such as the app bar and buttons.
    primary: GlobalAppColors.primaryColor,

    /// The color for the primary container, often used for background elements.
    primaryContainer: Color(0XFFC10B28),

    /// The color for the secondary container, used for additional background elements.
    secondaryContainer: Color(0XFFB4B4B4),

    // Error colors

    /// The color for the error container, often used for displaying error messages.
    errorContainer: Color(0XFF1877F2),

    /// The text color for indicating errors.
    onError: Color(0XFF32D736),

    /// The color for the container displaying error-related content.
    onErrorContainer: Color(0XFF00186A),

    // On colors (text colors)

    /// The text color when displayed on the primary color.
    onPrimary: Color(0XFF081E42),

    /// The text color when displayed on the primary container color.
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}
