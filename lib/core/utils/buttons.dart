part of values;

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style

  /// Button style for a filled button with a blue-gray background.
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: GlobalAppColors.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.myWidth),
        ),
      );

  /// Button style for a filled button with a deep orange background.
  static ButtonStyle get fillDeepOrange => ElevatedButton.styleFrom(
        backgroundColor: GlobalAppColors.primaryColor50.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.myWidth),
        ),
      );

  /// Button style for a filled button with an error container color background.
  static ButtonStyle get fillErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.errorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.myWidth),
        ),
      );

  /// Button style for a filled button with a gray background.
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: GlobalAppColors.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.myWidth),
        ),
      );

  /// Button style for a filled button with a gray background and a bottom-left radius of 30.
  static ButtonStyle get fillGrayBL30 => ElevatedButton.styleFrom(
        backgroundColor: GlobalAppColors.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              30.myWidth,
            ),
          ),
        ),
      );

  /// Button style for a filled button with a gray background and a top-left radius of 12.
  static ButtonStyle get fillGrayTL12 => ElevatedButton.styleFrom(
        backgroundColor: GlobalAppColors.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.myWidth),
        ),
      );

  /// Button style for a filled button with a gray background and a top-left radius of 30.
  static ButtonStyle get fillGrayTL30 => ElevatedButton.styleFrom(
        backgroundColor: GlobalAppColors.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              30.myWidth,
            ),
          ),
        ),
      );

  /// Button style for a filled button with the onPrimaryContainer color.
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.onPrimaryContainer,
      );

  /// Button style for a filled button with a primary color and a top-left radius of 12.
  static ButtonStyle get fillPrimaryTL12 => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.myWidth),
        ),
      );

  /// Button style for a filled button with a primary color and a top-left radius of 15.
  static ButtonStyle get fillPrimaryTL15 => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.primary.withOpacity(0.53),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.myWidth),
        ),
      );

  /// Button style for a filled button with a primary color and a top-left radius of 30.
  static ButtonStyle get fillPrimaryTL30 => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              30.myWidth,
            ),
          ),
        ),
      );

  /// Button style for a filled button with a primary color and a top-left radius of 8.
  static ButtonStyle get fillPrimaryTL8 => ElevatedButton.styleFrom(
        backgroundColor: Get.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.myWidth),
        ),
      );

  // Text button style

  /// Button style for a text button with a transparent background and no elevation.
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
