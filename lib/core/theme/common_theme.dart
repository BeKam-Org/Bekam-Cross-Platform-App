// Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

// Project imports:

/*------------------------------------------------------------------------------------------*/
/*------------------------------------  Common Theme  ---------------------------------------*/
/*------------------------------------------------------------------------------------------*/

var commonTheme = ThemeData(
  primaryColor: GlobalAppColors.appGrey,
  dividerColor: GlobalAppColors.appBlue,
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: GlobalAppColors.appBlue),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
