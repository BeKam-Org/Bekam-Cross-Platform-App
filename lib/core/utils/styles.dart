part of values;

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  static const colorScheme = ColorSchemes.primaryColorScheme;
  TextTheme textTheme = TextThemes.textTheme(colorScheme);
  // Body text style
  static get bodyLargeBluegray30087 =>
      TextThemes.textTheme(colorScheme).bodyLarge!.copyWith(
            color: GlobalAppColors.blueGray30087,
          );
  static get bodyMediumBluegray400 =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: GlobalAppColors.blueGray400,
          );
  static get bodyMediumBluegray40001 =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: GlobalAppColors.blueGray40001,
          );
  static get bodyMediumBluegray40001_1 =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: GlobalAppColors.blueGray40001.withOpacity(0.53),
          );
  static get bodyMediumBluegray40001_2 =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: GlobalAppColors.blueGray40001,
          );
  static get bodyMediumBluegray40001_3 =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: GlobalAppColors.blueGray40001,
          );
  static get bodyMediumBluegray900 =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: GlobalAppColors.blueGray900.withOpacity(0.53),
          );
  static get bodyMediumOnPrimaryContainer =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: colorScheme.onPrimaryContainer,
          );
  static get bodyMediumPrimary =>
      TextThemes.textTheme(colorScheme).bodyMedium!.copyWith(
            color: colorScheme.primary,
          );
  static get bodyMedium_1 => TextThemes.textTheme(colorScheme).bodyMedium!;
  static get bodySmallBluegray40001 =>
      TextThemes.textTheme(colorScheme).bodySmall!.copyWith(
            color: GlobalAppColors.blueGray40001,
          );
  static get bodySmallBluegray40001_1 =>
      TextThemes.textTheme(colorScheme).bodySmall!.copyWith(
            color: GlobalAppColors.blueGray40001,
          );
  static get bodySmallPrimary =>
      TextThemes.textTheme(colorScheme).bodySmall!.copyWith(
            color: colorScheme.primary,
          );
  // Label text style
  static get labelLargeBluegray900 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.blueGray900,
          );
  static get labelLargeBluegray90013 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.blueGray900,
            fontSize: 13.fSize,
          );
  static get labelLargeDeeporangeA70001 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.primaryColorA70001,
            fontSize: 13.fSize,
          );
  static get labelLargeGray40001 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.gray40001,
          );
  static get labelLargeOnPrimaryContainer =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: colorScheme.onPrimaryContainer,
          );
  static get labelLargePrimary =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: colorScheme.primary,
          );
  static get labelLargeTeal700 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.teal700,
          );
  static get labelLargeYellow800 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.yellow800.withOpacity(0.8),
          );
  static get labelLargeYellow800_1 =>
      TextThemes.textTheme(colorScheme).labelLarge!.copyWith(
            color: GlobalAppColors.yellow800.withOpacity(0.5),
          );
  static get labelMediumBluegray900 =>
      TextThemes.textTheme(colorScheme).labelMedium!.copyWith(
            color: GlobalAppColors.blueGray900,
          );
  // Title text style
  static get titleLargePrimary =>
      TextThemes.textTheme(colorScheme).titleLarge!.copyWith(
            color: colorScheme.primary,
          );
  static get titleLarge_1 => TextThemes.textTheme(colorScheme).titleLarge!;
  static get titleMediumBold =>
      TextThemes.textTheme(colorScheme).titleMedium!.copyWith(
            fontWeight: FontWeight.w700,
          );
  static get titleMediumOnPrimaryContainer =>
      TextThemes.textTheme(colorScheme).titleMedium!.copyWith(
            color: colorScheme.onPrimaryContainer,
          );
  static get titleMediumPrimary =>
      TextThemes.textTheme(colorScheme).titleMedium!.copyWith(
            color: colorScheme.primary,
          );
  static get titleMedium_1 => TextThemes.textTheme(colorScheme).titleMedium!;
  static get titleSmallBold =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            fontWeight: FontWeight.w700,
          );
  static get titleSmallGray40001 =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            color: GlobalAppColors.gray40001,
          );
  static get titleSmallOnPrimaryContainer =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            color: colorScheme.onPrimaryContainer,
          );
  static get titleSmallPrimary =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.w700,
          );
  static get titleSmallPrimary_1 =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            color: colorScheme.primary,
          );
  static get titleSmallPrimary_2 =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            color: colorScheme.primary,
          );
  static get titleSmallYellow800 =>
      TextThemes.textTheme(colorScheme).titleSmall!.copyWith(
            color: GlobalAppColors.yellow800.withOpacity(0.8),
            fontWeight: FontWeight.w700,
          );
  static get titleSmall_1 => TextThemes.textTheme(colorScheme).titleSmall!;
}

extension on TextStyle {
  // ignore: unused_element
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
