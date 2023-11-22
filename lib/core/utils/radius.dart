part of values;

/// A class that provides global application border radius configurations.
class GlobalAppBorderRadius {
  // Circle borders

  /// Circle border with a radius of 12 horizontal units.
  static BorderRadius get circleBorder12 => BorderRadius.circular(12.h);

  /// Circle border with a radius of 20 horizontal units.
  static BorderRadius get circleBorder20 => BorderRadius.circular(20.h);

  /// Circle border with a radius of 40 horizontal units.
  static BorderRadius get circleBorder40 => BorderRadius.circular(40.h);

  /// Circle border with a radius of 50 horizontal units.
  static BorderRadius get circleBorder50 => BorderRadius.circular(50.h);

  /// Circle border with a radius of 58 horizontal units.
  static BorderRadius get circleBorder58 => BorderRadius.circular(58.h);

  /// Circle border with a radius of 80 horizontal units.
  static BorderRadius get circleBorder80 => BorderRadius.circular(80.h);

  // Custom borders

  /// Custom bottom border with a radius of 30 circular units.
  static BorderRadius get customBorderBL30 =>
      BorderRadius.vertical(bottom: GlobalAppRadius.circular30);

  /// Custom top border with a radius of 30 circular units.
  static BorderRadius get customBorderTL30 =>
      BorderRadius.vertical(top: GlobalAppRadius.circular30);

  // Rounded borders

  /// Rounded border with a radius of 15 horizontal units.
  static BorderRadius get roundedBorder15 => BorderRadius.circular(15.h);

  /// Rounded border with a radius of 8 horizontal units.
  static BorderRadius get roundedBorder8 => BorderRadius.circular(8.h);
}

/// A class that provides global application radius configurations.
class GlobalAppRadius {
  /// Circular radius with a value of 30.
  static Radius get circular30 => Radius.circular(30.h);
}
