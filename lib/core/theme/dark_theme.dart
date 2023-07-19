// Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'common_theme.dart';

/*------------------------------------------------------------------------------------------*/
/*------------------------------------  Dark Theme  ---------------------------------------*/
/*------------------------------------------------------------------------------------------*/

ThemeData darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  primaryColor: commonTheme.primaryColor,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: commonTheme.colorScheme.secondary),
  visualDensity: commonTheme.visualDensity,
  dividerColor: commonTheme.dividerColor,
  scaffoldBackgroundColor: GlobalAppColors.kScaffoldDark,
);
