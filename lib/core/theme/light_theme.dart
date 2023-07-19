// Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'common_theme.dart';

/*------------------------------------------------------------------------------------------*/
/*------------------------------------  Light Theme  ---------------------------------------*/
/*------------------------------------------------------------------------------------------*/

ThemeData lightTheme = ThemeData.light().copyWith(
  useMaterial3: true,
  primaryColor: commonTheme.primaryColor,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: commonTheme.colorScheme.secondary),
  scaffoldBackgroundColor: GlobalAppColors.kScaffoldLight,
  dividerColor: commonTheme.dividerColor,
  visualDensity: commonTheme.visualDensity,
);
